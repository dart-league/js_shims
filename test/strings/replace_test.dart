import 'package:test/test.dart';
import 'package:js_shims/js_shims.dart';

main() {
  test('Defining the regular expression in replace()', () {
    var str = 'Twas the night before Xmas...';
    var newstr = replace(str, RegExp('xmas', caseSensitive: false), 'Christmas');
    expect(newstr, 'Twas the night before Christmas...');
  });
  
  test('Using global and ignore with replace()', () {
    var re = RegExp('apples', caseSensitive: false);
    var str = 'Apples are round, and apples are juicy.';
    var newstr = replace(str, re, 'oranges', global: true);
    expect(newstr, 'oranges are round, and oranges are juicy.');
  });

  test('Switching words in a string', () {
    var re = r'(\w+)\s(\w+)';
    var str = 'John Smith';
//    var newstr = replace(str, re, r'$2, $1');
    var newstr = replace(str, re, (Match m) => '${m[2]}, ${m[1]}');
    expect(newstr, 'Smith, John');
  });
}