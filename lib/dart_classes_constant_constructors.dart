class Point {
  // We mark the constructor as const to indicate that it creates a constant: i.e we want each variable linked to a unique instance of the class
  // const constructors only work with final fields

  const Point({
    required this.x,
    required this.y,
  });

  final int x;
  final int y;

  // creating origin as a constant
  static const origin = Point(x: 0, y: 0);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

dynamic cartesianPoint() {
  var p1 = const Point(x: 1, y: 2);
  var p2 = const Point(x: 1, y: 2);
  const listOfPoints = [
    Point(x: 1, y: 1),
    Point(x: 2, y: 2),
    Point(x: 1, y: 2)
  ];

  print('identical(p1, p2) --> ${identical(p1, p2)}');
  print(
      'listOfPoints[0] == listOfPoints[1] --> ${listOfPoints[0] == listOfPoints[1]}');
}
