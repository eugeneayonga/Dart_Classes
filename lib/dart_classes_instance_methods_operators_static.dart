// Factory constructors are a fantastic way to implement Singleton patterns in Dart for a class that has a private constructor.
import 'dart:math';

class Point {
  // We mark the constructor as const to indicate that it creates a constant: i.e we want each variable linked to a unique instance of the class
  // const constructors only work with final fields
  const Point({
    required this.x,
    required this.y,
  });

  // INSTANCE METHODS
  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(dx * dx + dy * dy);
  }

  // OPERATORS
  // OPERATORS --> are special methods that are invoked when an object is used with a Dart operator
  Point operator +(Point p) => Point(x: x + p.x, y: y + p.y);
  Point operator -(Point p) => Point(x: x - p.x, y: y - p.y);

  final int x;
  final int y;
  // creating origin as a constant
  static const origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

dynamic instMethOperatorsStatic() {
  var p1 = Point(x: 2, y: 3);
  var p2 = Point(x: 4, y: 5);

  var distance = p1.distanceTo(p2);
  print('distance --> $distance');

  p1 + p2;
  print('p1 + p2 --> ${p1 + p2}');

  p1 - p2;
  print('p1 - p2 --> ${p1 - p2}');
}
