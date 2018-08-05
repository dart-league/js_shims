import 'package:js_shims/js_shims.dart';
import 'package:test/test.dart';

main() {
  test('Removing an element from an array', () {
    var myFish = ['angel', 'clown', 'mandarin', 'surgeon'];

    console.log('myFish before:', JSON.stringify(myFish));
    // myFish before: ['angel', 'clown', 'mandarin', 'surgeon']

    var shifted = shift(myFish);

    console.log('myFish after:', myFish);
    // myFish after: ['clown', 'mandarin', 'surgeon']
    expect(myFish, ['clown', 'mandarin', 'surgeon']);

    console.log('Removed this element:', shifted);
    // Removed this element: angel
    expect(shifted, 'angel');
  });
}
