// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'templates.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldTemplate _$FieldTemplateFromJson(Map<String, dynamic> json) =>
    FieldTemplate(
      name: json['name'] as String,
      type: json['type'] as String,
      category: json['category'] as String,
      required: json['required'] as bool,
      defaultValue: json['default_value'] as String?,
      model: json['model'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$FieldTemplateToJson(FieldTemplate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'category': instance.category,
      'required': instance.required,
      'default_value': instance.defaultValue,
      'model': instance.model,
    };

ClassTemplate _$ClassTemplateFromJson(Map<String, dynamic> json) =>
    ClassTemplate(
      name: json['name'] as String,
      jsonName: json['json_name'] as String,
      fields: (json['fields'] as List<dynamic>)
          .map((e) => FieldTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassTemplateToJson(ClassTemplate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'json_name': instance.jsonName,
      'fields': instance.fields,
    };

EnumTemplate _$EnumTemplateFromJson(Map<String, dynamic> json) => EnumTemplate(
      name: json['name'] as String,
      values: (json['values'] as List<dynamic>)
          .map((e) => EnumValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EnumTemplateToJson(EnumTemplate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'values': instance.values,
    };

EnumValue _$EnumValueFromJson(Map<String, dynamic> json) => EnumValue(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$EnumValueToJson(EnumValue instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

MethodTemplate _$MethodTemplateFromJson(Map<String, dynamic> json) =>
    MethodTemplate(
      name: json['name'] as String,
      method: json['method'] as String,
      path: json['path'] as String,
      request: json['request'] as String,
      response: json['response'] as String?,
      contentType: json['content_type'] as String?,
      jsonBody: json['json_body'] == null
          ? null
          : FieldTemplate.fromJson(json['json_body'] as Map<String, dynamic>),
      formBody: json['form_body'] == null
          ? null
          : FieldTemplate.fromJson(json['form_body'] as Map<String, dynamic>),
      queryParameters: (json['query_parameters'] as List<dynamic>)
          .map((e) => FieldTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
      pathParameters: (json['path_parameters'] as List<dynamic>)
          .map((e) => FieldTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
      parameters: json['parameters'] as Map<String, dynamic>,
      hasParameters: json['has_parameters'] as bool,
    );

Map<String, dynamic> _$MethodTemplateToJson(MethodTemplate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'method': instance.method,
      'path': instance.path,
      'request': instance.request,
      'response': instance.response,
      'content_type': instance.contentType,
      'json_body': instance.jsonBody,
      'form_body': instance.formBody,
      'query_parameters': instance.queryParameters,
      'path_parameters': instance.pathParameters,
      'parameters': instance.parameters,
      'has_parameters': instance.hasParameters,
    };

RepositoryTemplate _$RepositoryTemplateFromJson(Map<String, dynamic> json) =>
    RepositoryTemplate(
      name: json['name'] as String,
      partOf: json['part_of'] as String,
      methods: (json['methods'] as List<dynamic>)
          .map((e) => MethodTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
      classes: (json['classes'] as List<dynamic>)
          .map((e) => ClassTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
      enums: (json['enums'] as List<dynamic>)
          .map((e) => EnumTemplate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RepositoryTemplateToJson(RepositoryTemplate instance) =>
    <String, dynamic>{
      'name': instance.name,
      'part_of': instance.partOf,
      'methods': instance.methods,
      'classes': instance.classes,
      'enums': instance.enums,
    };
