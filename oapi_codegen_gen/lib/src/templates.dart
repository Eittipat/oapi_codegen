import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'templates.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class FieldTemplate extends Equatable {
  final String name;
  final String type;
  final String category;
  final bool required;
  final String? defaultValue;
  final Map<String, dynamic>? model;

  FieldTemplate({
    required this.name,
    required this.type,
    required this.category,
    required this.required,
    this.defaultValue,
    this.model,
  });

  factory FieldTemplate.fromJson(Map<String, dynamic> json) =>
      _$FieldTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$FieldTemplateToJson(this);

  @override
  List<Object?> get props => [
        name,
        type,
        category,
        required,
        defaultValue,
        model,
      ];
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ClassTemplate extends Equatable {
  final String name;
  final String jsonName;
  final List<FieldTemplate> fields;

  ClassTemplate({
    required this.name,
    required this.jsonName,
    required this.fields,
  });

  factory ClassTemplate.fromJson(Map<String, dynamic> json) =>
      _$ClassTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$ClassTemplateToJson(this);

  @override
  List<Object?> get props => [
        name,
        jsonName,
        fields,
      ];
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EnumTemplate extends Equatable {
  final String name;
  final List<EnumValue> values;

  EnumTemplate({
    required this.name,
    required this.values,
  });

  factory EnumTemplate.fromJson(Map<String, dynamic> json) =>
      _$EnumTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$EnumTemplateToJson(this);

  @override
  List<Object?> get props => [
        name,
        values,
      ];
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EnumValue extends Equatable {
  final String name;
  final String value;

  EnumValue({
    required this.name,
    required this.value,
  });

  factory EnumValue.fromJson(Map<String, dynamic> json) =>
      _$EnumValueFromJson(json);

  Map<String, dynamic> toJson() => _$EnumValueToJson(this);

  @override
  List<Object?> get props => [
        name,
        value,
      ];
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MethodTemplate extends Equatable {
  final String name;
  final String method;
  final String path;
  final String request;
  final String? response;
  final String? contentType;
  final FieldTemplate? jsonBody;
  final FieldTemplate? formBody;
  final List<FieldTemplate> queryParameters;
  final List<FieldTemplate> pathParameters;
  final Map<String, dynamic> parameters;
  final bool hasParameters;

  MethodTemplate({
    required this.name,
    required this.method,
    required this.path,
    required this.request,
    this.response,
    this.contentType,
    this.jsonBody,
    this.formBody,
    required this.queryParameters,
    required this.pathParameters,
    required this.parameters,
    required this.hasParameters,
  });

  factory MethodTemplate.fromJson(Map<String, dynamic> json) =>
      _$MethodTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$MethodTemplateToJson(this);

  @override
  List<Object?> get props => [
        name,
        method,
        path,
        request,
        response,
        contentType,
        jsonBody,
        formBody,
        queryParameters,
        pathParameters,
        parameters,
        hasParameters,
      ];
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RepositoryTemplate extends Equatable {
  final String name;
  final String partOf;
  final List<MethodTemplate> methods;
  final List<ClassTemplate> classes;
  final List<EnumTemplate> enums;

  RepositoryTemplate({
    required this.name,
    required this.partOf,
    required this.methods,
    required this.classes,
    required this.enums,
  });

  factory RepositoryTemplate.fromJson(Map<String, dynamic> json) =>
      _$RepositoryTemplateFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryTemplateToJson(this);

  @override
  List<Object?> get props => [
        name,
        partOf,
        methods,
        classes,
        enums,
      ];
}
