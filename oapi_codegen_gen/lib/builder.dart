library;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/oapi_codegen_generator.dart';

Builder oapiCodeGen(BuilderOptions options) {
  return LibraryBuilder(
    RepositoryGenerator(),
    generatedExtension: ".apis.dart",
  );
}
