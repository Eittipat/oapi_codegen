import 'dart:convert';
import 'dart:io';

import 'package:args/args.dart';
import 'package:jinja/jinja.dart';
import 'package:jinja/loaders.dart';
import 'package:logging/logging.dart';
import 'package:yaml/yaml.dart';
import 'package:dart_style/dart_style.dart';
import 'src/oapi31.dart';

final logger = Logger('OpenAPI31');

final formatter = DartFormatter(
  languageVersion: DartFormatter.latestLanguageVersion,
);

class RepositoryConfig {
  RepositoryConfig({
    required this.name,
    required this.source,
    required this.input,
    required this.tags,
    required this.prefix,
    required this.extension,
    required this.templates,
  });

  final String name;
  final Map<String, dynamic> source;
  final String input;
  final List<String> tags;
  final String prefix;
  final String extension;
  final String templates;
}

void loadConfig(String configPath) {
  try {
    final file = File(configPath);
    final yamlString = file.readAsStringSync();
    final config = loadYaml(yamlString);
    // Process the config as needed
  } catch (e) {
    logger.severe('Error loading configuration from file: $e');
    exit(1);
  }
}

Map<String, dynamic> loadSpecFromFile(String filePath) {
  try {
    final file = File(filePath);
    final jsonString = file.readAsStringSync();
    return jsonDecode(jsonString);
  } catch (e) {
    logger.severe('Error loading specification from file: $e');
    exit(1);
  }
}

String generateDartRepositories(RepositoryConfig config) {
  final partOf = config.input.split('/').last;
  final openapi = OpenAPI31(config.source);
  final repository = openapi.createRepository(
    name: config.name,
    partOf: partOf,
    tags: config.tags,
  );
  final templates = Platform.script.resolve(config.templates).toFilePath();
  var env = Environment(
    globals: <String, Object?>{},
    autoReload: true,
    loader: FileSystemLoader(paths: <String>[templates]),
    leftStripBlocks: true,
    trimBlocks: true,
  );
  final data = jsonDecode(jsonEncode(repository));
  final code = env.getTemplate('repository.dart.jinja').render(data);
  return code;
}

void main(List<String> arguments) {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print("[${record.level}] ${record.loggerName} - ${record.message}");
  });
  final parser = ArgParser()
    ..addOption('source',
        help: 'Source URL or file path for Open API 3.1 specification',
        mandatory: true)
    ..addOption('name', help: 'Repository name', mandatory: true)
    ..addOption('input', help: 'Dart file path', mandatory: true)
    ..addMultiOption('tags',
        help:
            'Tags to be included (can be used multiple times) (omit to select all)')
    ..addOption('extension',
        help: 'Override file extension for generated files')
    ..addOption('prefix', help: 'Override prefix character for path parameters')
    ..addOption('templates', help: 'Override templates directory path')
    ..addFlag('print-to-console',
        help: 'Print generated code to console instead of saving to file');

  final args = parser.parse(arguments);

  try {
    logger.info('Generating repository ${args['name']} from ${args['source']}');
    final spec = loadSpecFromFile(args['source']);
    generateDartRepositories(
      RepositoryConfig(
        name: args['name'],
        source: spec,
        input: args['input'],
        tags: args['tags'],
        prefix: args['prefix'] ?? '\$',
        extension: args['extension'] ?? '.apis.dart',
        templates: args['templates'] ?? 'templates',
      ),
      //args['print-to-console'],
    );

    // final dartCode = repository.toDartCode();
    // if (printToConsole) {
    //   print(dartCode);
    // } else {
    //   final outputName = partOf.replaceAll('.dart', config.extension);
    //   final outputPath =
    //       '${config.input.split('/').sublist(0, config.input.split('/').length - 1).join('/')}/$outputName';
    //   final file = File(outputPath);
    //   file.writeAsStringSync(dartCode);
    //   logger.info('Generated $outputPath');
    // }

    logger.info('Code generation from configuration completed successfully');
  } catch (e) {
    logger.severe('Unexpected error during code generation: $e');
    exit(1);
  }
}
