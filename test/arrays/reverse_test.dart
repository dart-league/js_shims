import 'package:js_shims/js_shims.dart';
import 'package:test/test.dart';

main() {
  test('Reversing the elements in an array', () {
    const a = [1, 2, 3];

    print(a); // [1, 2, 3]

    reverse(a);

    print(a); // [3, 2, 1]
  });
}
