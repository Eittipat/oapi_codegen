import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logging/logging.dart';
import 'package:oapi_codegen/oapi_codegen.dart';

part 'main.apis.dart';

part 'main.g.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime dateTime) => dateTime.toIso8601String();
}

class FileConverter implements JsonConverter<File, String> {
  const FileConverter();

  @override
  File fromJson(String json) => File(json);

  @override
  String toJson(File file) => file.path;
}

const kApiConfig = OapiConfig(source: "openapi.json");

const serializable = JsonSerializable(
  fieldRename: FieldRename.snake,
  converters: [
    FileConverter(),
    DateTimeConverter(),
  ],
);

@OapiCodeGen(kApiConfig)
class SampleRepository extends _$SampleRepository {
  SampleRepository({required super.dio});
}

void main() {
  print("Hello World");
}
