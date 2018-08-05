import 'package:js_shims/js_shims.dart';

main() {
  var array1 = ['a', 'b', 'c'];
  var array2 = ['d', 'e', 'f'];

  print(concat(array1, array2));
  // expected output: Array ["a", "b", "c", "d", "e", "f"]

  var alpha = ['a', 'b', 'c'];
  var numeric = [1, 2, 3];

  print(concat(alpha, numeric));
  // result in ['a', 'b', 'c', 1, 2, 3]

  // The following code concatenates three arrays:
  var num1 = [1, 2, 3],
      num2 = [4, 5, 6],
      num3 = [7, 8, 9];

  var nums = concat(num1, num2, num3);

  print(nums);
  // results in [1, 2, 3, 4, 5, 6, 7, 8, 9]

  // The following code concatenates three values to an array:
  var alpha2 = ['a', 'b', 'c'];

  var alphaNumeric = concat(alpha2, 1, [2, 3]);

  print(alphaNumeric);
  // results in ['a', 'b', 'c', 1, 2, 3]

  // The following code concatenates nested arrays and demonstrates retention of references:
  var _num1 = [[1]];
  var _num2 = [2, [3]];

  var _nums = concat(_num1, _num2);

  print(_nums);
  // results in [[1], 2, [3]]

  // modify the first element of num1
  _num1[0].add(4);

  print(_nums);
  // results in [[1, 4], 2, [3]]
}