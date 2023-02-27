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

  // STATIC METHODS
  // STATIC METHODS exist without needing to instantiate any object from that class
  // Don't have access to this keyword
  static distanceBetween(Point p1, Point p2) {
    var dx = p1.x - p2.x;
    var dy = p1.y - p2.y;
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

dynamic staticMethodsDisplay() {
  var p1 = Point(x: 2, y: 3);
  var p2 = Point(x: 4, y: 5);

  Point.distanceBetween(p1, p2);
  print('Point.distanceBetween(p1, p2) --> ${Point.distanceBetween(p1, p2)}');
}
