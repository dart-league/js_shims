import 'package:js_shims/js_shims.dart';
import 'package:test/test.dart';

main() {
  test('Adding elements to an array', () {
    var sports = ['soccer', 'baseball'];
    var total = push(sports, 'football', 'swimming');

    print(sports); // ['soccer', 'baseball', 'football', 'swimming']
    expect(sports, ['soccer', 'baseball', 'football', 'swimming']);

    print(total);  // 4
    expect(total, 4);
  });
}
