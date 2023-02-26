// Instance variables are also called fields

class B {
  // Instance variables -> various ways to declare them inside a class
  int? _private;

  int? a;
  int b = 1;

  final int c = 2;

  late int d;
  late final int e;
  late final int f = 5;
}

dynamic fieldDisplay() {
  var alpha = B();

  print('alpha._private; --> ${alpha._private}');
  print('alpha.a --> ${alpha.a}');
  print('alpha.b --> ${alpha.b}');
  print('alpha.c --> ${alpha.c}');

  alpha.d = 3;
  print('alpha.d --> ${alpha.d}');

  alpha.e = 4;
  print('alpha.e --> ${alpha.e}');

  print('alpha.f --> ${alpha.f}');

  return fieldDisplay();
}
