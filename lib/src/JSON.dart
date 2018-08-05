part of js_shims;

class JSON {
  static stringify(object) => jsonEncode(object);

  static parse(object) => jsonDecode(object);
}