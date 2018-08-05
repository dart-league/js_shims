part of js_shims;

abstract class console {
  static log(item0, [item1, item2, item3, item4, item5, item6, item7, item8, item9]) {
    var result = item0.toString();
    if (item1 != null) result += item1.toString();
    if (item2 != null) result += item2.toString();
    if (item3 != null) result += item3.toString();
    if (item4 != null) result += item4.toString();
    if (item5 != null) result += item5.toString();
    if (item6 != null) result += item6.toString();
    if (item7 != null) result += item7.toString();
    if (item8 != null) result += item8.toString();
    if (item9 != null) result += item9.toString();
    print(result);
  }

  static warn(item0, [item1, item2, item3, item4, item5, item6, item7, item8, item9]) {
    var result = item0.toString();
    if (item1 != null) result += item1.toString();
    if (item2 != null) result += item2.toString();
    if (item3 != null) result += item3.toString();
    if (item4 != null) result += item4.toString();
    if (item5 != null) result += item5.toString();
    if (item6 != null) result += item6.toString();
    if (item7 != null) result += item7.toString();
    if (item8 != null) result += item8.toString();
    if (item9 != null) result += item9.toString();
    print(result);
  }

  static debug(item0, [item1, item2, item3, item4, item5, item6, item7, item8, item9]) {
    var result = item0.toString();
    if (item1 != null) result += item1.toString();
    if (item2 != null) result += item2.toString();
    if (item3 != null) result += item3.toString();
    if (item4 != null) result += item4.toString();
    if (item5 != null) result += item5.toString();
    if (item6 != null) result += item6.toString();
    if (item7 != null) result += item7.toString();
    if (item8 != null) result += item8.toString();
    if (item9 != null) result += item9.toString();
    print(result);
  }
}