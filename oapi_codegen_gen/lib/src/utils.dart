import 'dart:convert';

String toCamelCase(String s, [bool lower = true]) {
  // Keep track of any prefixes (like _$, __$, $)
  String prefix = '';
  String sWithoutPrefix = s;

  // Extract prefix if exists (like _$, __$, $)
  RegExp prefixRegex = RegExp(r'^[_$]+');
  Match? prefixMatch = prefixRegex.firstMatch(s);
  if (prefixMatch != null) {
    prefix = prefixMatch.group(0) ?? '';
    sWithoutPrefix = s.substring(prefix.length);
  }

  // Split by underscore
  List<String> parts = sWithoutPrefix.split('_');

  // Build camelCase
  String result = parts[0];
  for (int i = 1; i < parts.length; i++) {
    if (parts[i].isNotEmpty) {
      result += parts[i][0].toUpperCase() + parts[i].substring(1);
    }
  }

  // Apply casing to first letter
  if (result.isNotEmpty) {
    result = lower
        ? result[0].toLowerCase() + result.substring(1)
        : result[0].toUpperCase() + result.substring(1);
  }

  // Add the prefix back
  return prefix + result;
}
