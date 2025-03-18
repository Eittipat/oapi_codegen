import 'package:logging/logging.dart';

import 'templates.dart';
import 'utils.dart';

final Logger logger = Logger('OpenAPI31');

class OpenAPI31 {
  OpenAPI31(this.spec31);

  final Map<String, dynamic> spec31;
  String prefix = '@@@';
  final Set<String> resolvedModels = {};

  String getSafeName(String value) {
    return '$prefix$value';
  }

  ClassTemplate parseClass(Map<String, dynamic> obj) {
    final fields = <FieldTemplate>[];
    obj['properties'].forEach((fieldName, value) {
      fields.add(FieldTemplate(
        name: toCamelCase(fieldName),
        type: resolveType(value),
        category: resolveClass(value),
        required: obj['required']?.contains(fieldName) ?? false,
        defaultValue: resolveValue(value),
        model: null,
      ));
    });
    final name = getSafeName(obj['@oapi-schema-name']);
    final jsonName = '_\$${name.replaceFirst(RegExp(r'^_+'), '')}';
    return ClassTemplate(
      name: name,
      jsonName: jsonName,
      fields: fields,
    );
  }

  EnumTemplate parseEnum(Map<String, dynamic> obj) {
    final values = obj['enum'];
    return EnumTemplate(
      name: getSafeName(obj['@oapi-schema-name']),
      values: values
          .map<EnumValue>(
              (v) => EnumValue(name: toCamelCase(v.toLowerCase()), value: v))
          .toList(),
    );
  }

  MethodTemplate parseMethod(
    String action,
    String path,
    Map<String, dynamic> obj,
  ) {
    final pathParams = <FieldTemplate>[];
    final queryParams = <FieldTemplate>[];
    if (obj.containsKey('parameters')) {
      final parameters = obj['parameters'];
      for (var param in parameters) {
        final schema = param['schema'];
        final field = FieldTemplate(
          name: toCamelCase(param['name']),
          type: resolveType(schema),
          category: resolveClass(schema),
          required: param['required'] ?? false,
          defaultValue: resolveValue(schema),
          model: null,
        );
        if (param['in'] == 'path') {
          pathParams.add(field);
          path =
              path.replaceAll('{${param['name']}}', '\${param.${field.name}}');
        } else if (param['in'] == 'query') {
          queryParams.add(field);
        } else {
          throw Exception('Unknown parameter type (${param['in']})');
        }
      }
    }

    FieldTemplate? jsonBody;
    FieldTemplate? formBody;
    String? bodyType;
    if (obj.containsKey('requestBody')) {
      final body = obj['requestBody'];
      final bodyRequired = body['required'] ?? [];
      final bodyDefault = body['default'];
      if (body['content'].containsKey('application/json')) {
        bodyType = 'application/json';
        final bodySchema = body['content']['application/json']['schema'];
        if (!bodySchema.containsKey('\$ref')) {
          throw Exception('Anonymous schema not supported');
        }
        final jsonModel = parseModel(findRefSchema(bodySchema['\$ref']));
        jsonBody = FieldTemplate(
          name: 'body',
          type: resolveType(bodySchema),
          category: resolveClass(bodySchema),
          required: bodyRequired,
          defaultValue: bodyDefault,
          model: jsonModel.toJson(),
        );
      } else if (body['content'].containsKey('multipart/form-data')) {
        bodyType = 'multipart/form-data';
        final bodySchema = body['content']['multipart/form-data']['schema'];
        if (!bodySchema.containsKey('\$ref')) {
          throw Exception('Anonymous schema not supported');
        }
        final formModel = parseModel(findRefSchema(bodySchema['\$ref']));
        formBody = FieldTemplate(
          name: 'body',
          type: resolveType(bodySchema),
          category: resolveClass(bodySchema),
          required: bodyRequired,
          defaultValue: bodyDefault,
          model: formModel.toJson(),
        );
      } else {
        throw Exception('Unknown content type (${body['content']})');
      }
    }

    String? response;
    if (obj['responses'].containsKey('default')) {
      final schema =
          obj['responses']['default']['content']['application/json']['schema'];
      response =
          getSafeName(findRefSchema(schema['\$ref'])['@oapi-schema-name']);
    } else {
      throw Exception('Default Response not found!');
    }

    final schemaName = obj['@oapi-schema-name'];
    return MethodTemplate(
      name: schemaName,
      method: action,
      path: path,
      request: getSafeName(toCamelCase('${schemaName}Request', false)),
      response: response,
      contentType: bodyType,
      jsonBody: jsonBody,
      formBody: formBody,
      queryParameters: queryParams,
      pathParameters: pathParams,
      hasParameters: queryParams.isNotEmpty ||
          pathParams.isNotEmpty ||
          jsonBody != null ||
          formBody != null,
      parameters: {
        'query': queryParams,
        'path': pathParams,
        'json': jsonBody,
        'form': formBody,
      },
    );
  }

  dynamic parseModel(Map<String, dynamic> obj) {
    if (obj.containsKey('properties')) {
      return parseClass(obj);
    }
    if (obj.containsKey('enum')) {
      return parseEnum(obj);
    }
    throw Exception('Unknown schema type');
  }

  RepositoryTemplate createRepository({
    required String name,
    required String partOf,
    required List<String> tags,
    String prefix = '\$',
  }) {
    this.prefix = prefix;
    final methods = <MethodTemplate>{};
    final classes = <ClassTemplate>{};
    final enums = <EnumTemplate>{};
    spec31['paths'].forEach((path, actions) {
      actions.forEach((action, obj) {
        final schemaName = toCamelCase(obj['summary'].replaceAll(' ', '_'));
        obj['@oapi-schema-name'] = schemaName;
        final specTags = obj['tags'] ?? [];
        if (tags.isEmpty || tags.any((tag) => specTags.contains(tag))) {
          final method = parseMethod(action, path, obj);
          methods.add(method);
        }
      });
    });

    var count = 0;
    while (count < 2) {
      final visitedModels = resolvedModels.toList()..sort();
      for (var schemaName in visitedModels) {
        final obj = spec31['components']['schemas'][schemaName];
        obj['@oapi-schema-name'] = schemaName;
        final schema = parseModel(obj);
        if (schema is ClassTemplate) {
          classes.add(schema);
        } else if (schema is EnumTemplate) {
          enums.add(schema);
        } else {
          throw Exception('Unknown schema type');
        }
      }
      if (visitedModels.length == resolvedModels.length) {
        count++;
      } else {
        count = 0;
      }
    }

    return RepositoryTemplate(
      name: name,
      partOf: partOf,
      methods: methods.toList(),
      classes: classes.toList(),
      enums: enums.toList(),
    );
  }

  Map<String, dynamic> findRefSchema(String ref) {
    final refName = findRefName(ref);
    final schema = spec31['components']['schemas'][refName];
    schema['@oapi-schema-name'] = refName;
    return schema;
  }

  String findRefName(String ref) {
    final refName = ref.split('/').last;
    resolvedModels.add(refName);
    return refName;
  }

  String? resolveValue(Map<String, dynamic> schema) {
    if (!schema.containsKey('default')) {
      return null;
    }
    final defaultValue = schema['default'];
    if (schema.containsKey('type')) {
      final schemaType = schema['type'];
      if (schemaType == 'boolean') {
        return defaultValue.toString().toLowerCase();
      } else if (schemaType == 'array') {
        return 'const $defaultValue';
      }
    }
    return defaultValue.toString();
  }

  String resolveClass(Map<String, dynamic> schema) {
    if (schema.containsKey('\$ref')) {
      return resolveClass(findRefSchema(schema['\$ref']));
    }
    if (schema.containsKey('enum')) {
      return 'enum';
    }
    if (schema.containsKey('type')) {
      return 'primitive';
    }
    if (schema.containsKey('anyOf')) {
      final types = schema['anyOf'];
      final nonNullSchemas = types.where((s) => s['type'] != 'null').toList();
      if (nonNullSchemas.length == 1) {
        return resolveClass(nonNullSchemas[0]);
      } else {
        return 'union';
      }
    }
    if (schema.containsKey('allOf')) {
      logger.warning('Only support allOf with one element');
      return resolveClass(schema['allOf'][0]);
    }
    throw Exception('Type not found in schema');
  }

  String resolveType(Map<String, dynamic> schema) {
    if (schema.containsKey('@oapi-type')) {
      return schema['@oapi-type'];
    }

    if (schema.containsKey('\$ref')) {
      return resolveType(findRefSchema(schema['\$ref']));
    }
    if (schema.containsKey('enum')) {
      return getSafeName(schema['@oapi-schema-name']);
    }
    if (schema.containsKey('type')) {
      final schemaType = schema['type'];
      if (schemaType == 'object') {
        return getSafeName(schema['@oapi-schema-name']);
      }
      if (schemaType == 'array') {
        final items = resolveType(schema['items']);
        return 'List<$items>';
      }
      if (schemaType == 'string') {
        return 'String';
      }
      if (schemaType == 'number') {
        return 'double';
      }
      if (schemaType == 'integer') {
        return 'int';
      }
      if (schemaType == 'boolean') {
        return 'bool';
      }
      throw Exception('Unknown type $schemaType');
    }
    if (schema.containsKey('anyOf')) {
      final types = schema['anyOf'];
      final nullable = types.any((s) => s['type'] == 'null');
      final nonNullSchemas = types.where((s) => s['type'] != 'null').toList();
      if (nonNullSchemas.length == 1) {
        final suffix = nullable ? '?' : '';
        return resolveType(nonNullSchemas[0]) + suffix;
      } else {
        logger.warning('Union types not supported yet, Use `Object` instead');
        final suffix = nullable ? '?' : '';
        return 'any$suffix';
      }
    }
    if (schema.containsKey('allOf')) {
      logger.warning('Only support allOf with one element');
      return resolveType(schema['allOf'][0]);
    }
    throw Exception('Type not found in schema');
  }
}
