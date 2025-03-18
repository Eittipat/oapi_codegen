import 'dart:io';

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:build/build.dart';
import 'package:oapi_codegen/oapi_codegen.dart';
import 'package:package_config/package_config.dart';
import 'package:source_gen/source_gen.dart';

import '../main.dart';

class RepositoryGenerator extends GeneratorForAnnotation<OapiCodeGen> {
  @override
  Future<String> generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) async {
    final config = newOapiCodeGenAnnotation(annotation);
    final visitor = ModelVisitor();
    element.visitChildren(visitor);

    final cwd = Directory.current;
    String folder = "${cwd.path}/${config.config.templates}";
    if (config.config.templates == null) {
      final packageConfig = await findPackageConfig(cwd);
      final package = packageConfig?.packages.firstWhere(
        (p) => p.name == 'oapi_codegen_gen',
      );
      folder = package!.packageUriRoot.resolve("templates").toFilePath();
    }
    final templates = Platform.script.resolve(folder).toFilePath();
    return generateDartRepositories(RepositoryConfig(
      name: visitor.className,
      tags: config.tags,
      input: buildStep.inputId.path,
      source: loadSpecFromFile(config.config.source),
      prefix: "\$",
      extension: ".apis.dart",
      templates: templates,
    ));
  }
}

class ModelVisitor extends SimpleElementVisitor<void> {
  late String className;
  final fields = <String, dynamic>{};

  @override
  void visitConstructorElement(ConstructorElement element) {
    final elementReturnType = element.type.returnType.toString();
    className = elementReturnType.replaceFirst('*', '');
  }

  @override
  void visitFieldElement(FieldElement element) {
    if (element.getter?.metadata.isNotEmpty ?? false) {
      for (var meta in element.getter!.metadata) {
        if (meta.isOverride) {
          return;
        }
      }
    }
    final elementType = element.type.toString();
    fields[element.name] = elementType.replaceFirst('*', '');
  }
}

OapiCodeGen newOapiCodeGenAnnotation(ConstantReader annotation) {
  String? templates;
  if (!annotation.read("config").read("templates").isNull) {
    templates = annotation.read("config").read("templates").stringValue;
  }
  return OapiCodeGen(
    OapiConfig(
      source: annotation.read("config").read("source").stringValue,
      templates: templates,
    ),
    tags: annotation
        .read("tags")
        .listValue
        .map((e) => e.toStringValue()!)
        .toList(),
  );
}
