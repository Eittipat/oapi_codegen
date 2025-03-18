library;

import 'package:meta/meta_meta.dart';

@Target({TargetKind.classType})
class OapiCodeGen {
  const OapiCodeGen(
    this.config, {
    this.tags = const [],
  });

  final OapiConfig config;
  final List<String> tags;
}

class OapiConfig {
  const OapiConfig({
    required this.source,
    this.templates,
  });

  final String source;
  final String? templates;
}
