// Factory constructors are a fantastic way to implement Singleton patterns in Dart for a class that has a private constructor.
import 'dart:math';

class Singleton {
  Singleton._privateConstructor();
  static final Singleton _instance = Singleton._privateConstructor();
  factory Singleton() => _instance;
}

class Point {
  // We mark the constructor as const to indicate that it creates a constant: i.e we want each variable linked to a unique instance of the class
  // const constructors only work with final fields

  const Point({
    required this.x,
    required this.y,
  });

  // Factory constructors are used to return an instance of a class
  // They are useful when we want to return an instance of a subclass
  factory Point.random({required bool isPositive}) {
    int minNegativeValue = -99;
    int maxNegativeValue = -1;
    int minPositiveValue = 1;
    int maxPositiveValue = 99;

    int randomNegativeValue = minNegativeValue +
        Random().nextInt(maxNegativeValue - minNegativeValue);
    int randomPositiveValue = minPositiveValue +
        Random().nextInt(maxPositiveValue - minPositiveValue);

    return isPositive
        ? Point(x: randomPositiveValue, y: randomPositiveValue)
        : Point(x: randomNegativeValue, y: randomNegativeValue);
  }

  final int x;
  final int y;

  // creating origin as a constant
  static const origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

dynamic singletonToDisplay() {
  // var randomNegativePoint = Point.random(isPositive: false);
  // var randomPositivePoint = Point.random(isPositive: true);

  // print('randomNegativePoint --> $randomNegativePoint');
  // print('randomPositivePoint --> $randomPositivePoint');

  var singleton1 = Singleton();
  var singleton2 = Singleton();

  identical(singleton1, singleton2)
      ? print('Singletons are identical')
      : print('Singletons are not identical');
}
