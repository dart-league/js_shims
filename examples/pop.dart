import 'package:js_shims/js_shims.dart';

main() {
  var plants = ['broccoli', 'cauliflower', 'cabbage', 'kale', 'tomato'];

  print(pop(plants));
  // expected output: "tomato"

  print(plants);
  // expected output: Array ["broccoli", "cauliflower", "cabbage", "kale"]

  pop(plants);

  print(plants);
  // expected output: Array ["broccoli", "cauliflower", "cabbage"]
}