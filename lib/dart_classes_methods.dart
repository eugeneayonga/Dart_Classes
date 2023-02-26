// METHODS are functions that are defined inside a class
// One such method is the CONSTRUcTOR
// A constructor is a special method that is called when an object is created

class FirstClass {
  // Constructor for this class
  FirstClass(this._private, this.a, this.b, this.c, this.d, this.e, this.f);

  int? _private;

  int? a;
  int b = 1;

  final int c;

  late int d;
  late final int e;
  late final int f;

  static int g = 6;
  static late int h;
  static late int i = 8;
  static late final int j = 9;

  static const int k = 10;

  @override
  String toString() {
    super.toString();
    return 'FirstClass(_private: $_private, a: $a, b: $b, c: $c, d: $d, e: $e, f: $f, g: $g, h: $h, i: $i, j: $j, k: $k)';
  }
}

dynamic methodDisplay() {
  var one = FirstClass(
    // This is the constructor
    0,
    1,
    2,
    3,
    4,
    5,
    6,
  );

  print('one._private --> ${one._private}');
}
