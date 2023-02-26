class NamedConstructor {
  // constructor
  NamedConstructor({
    required this.x,
    required this.y,
  });

  // named constructor to convert x and y to zero
  NamedConstructor.zero()
      : x = 0,
        y = 0;

  // NamedConstructor for json
  NamedConstructor.fromJson({required Map<String, int> json})
      : x = json['x']!,
        y = json['y']!;

  final int x;
  final int y;

  @override
  String toString() {
    super.toString();
    return 'NamedConstructor(x: $x, y: $y)';
  }
}

dynamic namedConstructorDisplay() {
  var gamma = NamedConstructor(x: 1, y: 2);
  var gammaZero = NamedConstructor.zero();
  var gammaJson = NamedConstructor.fromJson(json: {'x': 4, 'y': 8});

  print('gamma --> $gamma');
  print('gammaZero --> $gammaZero');
  print('gammaJson --> $gammaJson');
}
