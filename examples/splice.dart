import 'package:js_shims/js_shims.dart';

main() {
  var months = ['Jan', 'March', 'April', 'June'];
  splice(months, 1, 0, 'Feb');
  // inserts at 1st index position
  print(months);
  // expected output: Array ['Jan', 'Feb', 'March', 'April', 'June']

  splice(months, 4, 1, 'May');
  // replaces 1 element at 4th index
  print(months);
  // expected output: Array ['Jan', 'Feb', 'March', 'April', 'May']
}
