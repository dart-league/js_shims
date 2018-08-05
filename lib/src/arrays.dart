part of js_shims;

/// Changes the content of an array, adding new elements while removing old elements.
///
///     <?code-excerpt "examples/splice.dart"?>
///     ```dart
///     import 'package:js_shims/js_shims.dart';
///
///     main() {
///       var months = ['Jan', 'March', 'April', 'June'];
///       splice(months, 1, 0, 'Feb');
///       // inserts at 1st index position
///       print(months);
///       // expected output: Array ['Jan', 'Feb', 'March', 'April', 'June']
///
///       splice(months, 4, 1, 'May');
///       // replaces 1 element at 4th index
///       print(months);
///       // expected output: Array ['Jan', 'Feb', 'March', 'April', 'May']
///     }
///     ```
List<T> splice<T>(List<T> list, int index, [num howMany = 0, /*<T | List<T>>*/ elements]) {
  var endIndex = index + howMany.truncate();
  list.removeRange(index, endIndex >= list.length ? list.length : endIndex);
  if (elements != null) list.insertAll(index, elements is List<T> ? elements : <T>[elements]);
  return list;
}

/// Returns a new array comprised of this array joined with other array(s) and/or value(s).
///
///     <?code-excerpt "examples/concat.dart"?>
///     ```dart
///     import 'package:js_shims/js_shims.dart';
///
///     main() {
///       var array1 = ['a', 'b', 'c'];
///       var array2 = ['d', 'e', 'f'];
///
///       print(concat(array1, array2));
///       // expected output: Array ["a", "b", "c", "d", "e", "f"]
///
///       var alpha = ['a', 'b', 'c'];
///       var numeric = [1, 2, 3];
///
///       print(concat(alpha, numeric));
///       // result in ['a', 'b', 'c', 1, 2, 3]
///
///       // The following code concatenates three arrays:
///       var num1 = [1, 2, 3],
///           num2 = [4, 5, 6],
///           num3 = [7, 8, 9];
///
///       var nums = concat(num1, num2, num3);
///
///       print(nums);
///       // results in [1, 2, 3, 4, 5, 6, 7, 8, 9]
///
///       // The following code concatenates three values to an array:
///       var alpha2 = ['a', 'b', 'c'];
///
///       var alphaNumeric = concat(alpha2, 1, [2, 3]);
///
///       print(alphaNumeric);
///       // results in ['a', 'b', 'c', 1, 2, 3]
///
///       // The following code concatenates nested arrays and demonstrates retention of references:
///       var _num1 = [[1]];
///       var _num2 = [2, [3]];
///
///       var _nums = concat(_num1, _num2);
///
///       print(_nums);
///       // results in [[1], 2, [3]]
///
///       // modify the first element of num1
///       _num1[0].add(4);
///
///       print(_nums);
///       // results in [[1, 4], 2, [3]]
///     }
///     ```
List concat(List list, list0, [list1, list2, list3, list4, list5, list6, list7, list8, list9]) {
  var ret = []..addAll(list);
  _concat(List list, value) {
    if (value is List)
      list.addAll(value);
    else
      list.add(value);
  }

  if (list0 != null) _concat(ret, list0);
  if (list1 != null) _concat(ret, list1);
  if (list2 != null) _concat(ret, list2);
  if (list3 != null) _concat(ret, list3);
  if (list4 != null) _concat(ret, list4);
  if (list5 != null) _concat(ret, list5);
  if (list6 != null) _concat(ret, list6);
  if (list7 != null) _concat(ret, list7);
  if (list8 != null) _concat(ret, list8);
  if (list9 != null) _concat(ret, list9);
  return ret;
}

/// Removes the last element from an array and returns that element.
///
///     <?code-excerpt "examples/pop.dart"?>
///     ```dart
///     import 'package:js_shims/js_shims.dart';
///
///     main() {
///       var plants = ['broccoli', 'cauliflower', 'cabbage', 'kale', 'tomato'];
///
///       print(pop(plants));
///       // expected output: "tomato"
///
///       print(plants);
///       // expected output: Array ["broccoli", "cauliflower", "cabbage", "kale"]
///
///       pop(plants);
///
///       print(plants);
///       // expected output: Array ["broccoli", "cauliflower", "cabbage"]
///     }
///     ```
dynamic pop(List list) => list.removeLast();

/// Mutates an array by appending the given elements and returning the new length of the array.
///
///     <?code-excerpt "test/arrays/push_test.dart"?>
///     ```dart
///     import 'package:js_shims/js_shims.dart';
///     import 'package:test/test.dart';
///
///     main() {
///       test('Adding elements to an array', () {
///         var sports = ['soccer', 'baseball'];
///         var total = push(sports, 'football', 'swimming');
///
///         print(sports); // ['soccer', 'baseball', 'football', 'swimming']
///         expect(sports, ['soccer', 'baseball', 'football', 'swimming']);
///
///         print(total);  // 4
///         expect(total, 4);
///       });
///     }
///     ```
int push(List list, item0, [item1, item2, item3, item4, item5, item6, item7, item8, item9]) {
  list.add(item0);
  if (item1 != null) list.add(item1);
  if (item2 != null) list.add(item2);
  if (item3 != null) list.add(item3);
  if (item4 != null) list.add(item4);
  if (item5 != null) list.add(item5);
  if (item6 != null) list.add(item6);
  if (item7 != null) list.add(item7);
  if (item8 != null) list.add(item8);
  if (item9 != null) list.add(item9);
  return list.length;
}

/// Reverses an array in place. The first array element becomes the last and the last becomes the first
///
///     <?code-excerpt "test/arrays/reverse_test.dart"?>
///     ```dart
///     import 'package:js_shims/js_shims.dart';
///     import 'package:test/test.dart';
///
///     main() {
///       test('Reversing the elements in an array', () {
///         const a = [1, 2, 3];
///
///         print(a); // [1, 2, 3]
///
///         reverse(a);
///
///         print(a); // [3, 2, 1]
///       });
///     }
///     ```
List reverse(List list) => list = list.reversed.toList();

/// Removes the first element from an array and returns that element. This method changes the length of the array.
///
///     <?code-excerpt "test/arrays/shift_test.dart"?>
///     ```dart
///     import 'package:js_shims/js_shims.dart';
///     import 'package:test/test.dart';
///
///     main() {
///       test('Removing an element from an array', () {
///         var myFish = ['angel', 'clown', 'mandarin', 'surgeon'];
///
///         console.log('myFish before:', JSON.stringify(myFish));
///         // myFish before: ['angel', 'clown', 'mandarin', 'surgeon']
///
///         var shifted = shift(myFish);
///
///         console.log('myFish after:', myFish);
///         // myFish after: ['clown', 'mandarin', 'surgeon']
///         expect(myFish, ['clown', 'mandarin', 'surgeon']);
///
///         console.log('Removed this element:', shifted);
///         // Removed this element: angel
///         expect(shifted, 'angel');
///       });
///     }
///     ```
dynamic shift(List list) => list.removeAt(0);

/// Adds one or more elements to the beginning of an array and returns the new length of the array.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/unshift)
int unshift(List list, item) {
  list.insert(0, item);
  return list.length;
}


/// Returns a shallow copy of a portion of an array.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/slice)
List slice(List list, int begin, [int end]) =>
    list.getRange(begin, end == null ? list.length : end < 0 ? list.length + end : end).toList();

/// Tests whether all elements in the array passes (truthy) the test implemented by the provided function.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/every)
bool every(List list, fn(e)) => list.every((x) => truthy(fn(x)));

/// Tests whether some element in the array passes (truthy) the test implemented by the provided function.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/some)
bool some(List list, fn(e)) => list.any((x) => truthy(fn(x)));

/// Creates a new array with all elements that pass the test implemented by the provided function.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/filter)
List filter(List list, fn(e)) => list.where((x) => truthy(fn(x))).toList();

/// Apply a function against an accumulator and each value of the array (from left-to-right) as to reduce it to a single value.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduce)
reduce(List list, fn(prev, curr, int index, List list), [initialValue]) {
  var index = 0;
  var value;
  var isValueSet = false;
  if (1 < list.length) {
    value = initialValue;
    isValueSet = true;
  }
  for (; list.length > index; ++index) {
    if (isValueSet) {
      value = fn(value, list[index], index, list);
    } else {
      value = list[index];
      isValueSet = true;
    }
  }
  if (!isValueSet) throw new TypeError(); //'Reduce of empty array with no initial value'

  return value;
}

/// Apply a function simultaneously against two values of the array (from right-to-left) as to reduce it to a single value.
/// [docs](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reduceRight)
dynamic reduceRight(List list, fn(prev, curr, int index, List list), [initialValue]) {
  var length = list.length;
  var index = length - 1;
  var value;
  var isValueSet = false;
  if (1 < list.length) {
    value = initialValue;
    isValueSet = true;
  }
  for (; -1 < index; --index) {
    if (isValueSet) {
      value = fn(value, list[index], index, list);
    } else {
      value = list[index];
      isValueSet = true;
    }
  }
  if (!isValueSet) {
    throw new TypeError(); //'Reduce of empty array with no initial value'
  }
  return value;
}
