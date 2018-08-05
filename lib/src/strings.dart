part of js_shims;

/// Returns the character at the specified index.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charAt)
String charAt(String str, int atPos) => str.substring(atPos, 1);

/// Returns a number indicating the Unicode value of the character at the given index.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/charCodeAt)
int charCodeAt(String str, int atPos) => str.codeUnitAt(atPos);

/// Wraps the string in double quotes (""").
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/quote)
String quote(String str) => '"$str"';

/// Used to find a match between a regular expression and a string, and to replace the matched substring with a new substring.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/replace)
///
///     <?code-excerpt "test/strings/replace_test.dart"?>
///     ```dart
///     import 'package:test/test.dart';
///     import 'package:js_shims/js_shims.dart';
///
///     main() {
///       test('Defining the regular expression in replace()', () {
///         var str = 'Twas the night before Xmas...';
///         var newstr = replace(str, RegExp('xmas', caseSensitive: false), 'Christmas');
///         expect(newstr, 'Twas the night before Christmas...');
///       });
///
///       test('Using global and ignore with replace()', () {
///         var re = RegExp('apples', caseSensitive: false);
///         var str = 'Apples are round, and apples are juicy.';
///         var newstr = replace(str, re, 'oranges', global: true);
///         expect(newstr, 'oranges are round, and oranges are juicy.');
///       });
///
///       test('Switching words in a string', () {
///         var re = r'(\w+)\s(\w+)';
///         var str = 'John Smith';
///     //    var newstr = replace(str, re, r'$2, $1');
///         var newstr = replace(str, re, (Match m) => '${m[2]}, ${m[1]}');
///         expect(newstr, 'Smith, John');
///       });
///     }
///     ```
String replace(String str, pattern, newSubstrOrFn, {bool global = false}) {
  if (pattern is String) pattern = RegExp(pattern);

  if (newSubstrOrFn is String) {
    if (global) return str.replaceAll(pattern, newSubstrOrFn);
    else return str.replaceFirst(pattern, newSubstrOrFn);
  } else {
    if (global) return str.replaceAllMapped(pattern, newSubstrOrFn);
    else return str.replaceFirstMapped(pattern, newSubstrOrFn);
  }
}

/// Executes the search for a match between a regular expression and a specified string.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/search)
int search(String str, RegExp pattern) => str.indexOf(pattern);

/// Returns the characters in a string beginning at the specified location through the specified number of characters.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/substr)
String substr(String str, int start, [int length = null]) {
  if (start < 0) start = str.length + start;
  if (start < 0) start = 0;
  if (start > str.length) start = str.length;
  var end = length == null ? str.length : start + length > str.length ? str.length : start + length;
  return str.substring(start, end);
}

/// Trims whitespace from the left side of the string.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/trimLeft)
String trimLeft(String str) => str.replaceAll(new RegExp(r'^\s+'), '');

/// Trims whitespace from the right side of the string.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/trimRight)
String trimRight(String str) => str.replaceAll(new RegExp(r'\s+$'), '');

/// HTML Encode `html` string.
String escapeHtml(String html) =>
    html.replaceAll("&", '&amp;').replaceAll("<", '&lt;').replaceAll(">", '&gt;').replaceAll('"', '&quot;');

// --- RegEx ---

List<String> exec(RegExp regex, String str) {
  var m = regex.firstMatch(str);
  if (m == null) return null;

  var groups = <int>[];
  for (var i = 0; i <= m.groupCount; i++) groups.add(i);

  return m.groups(groups);
}
