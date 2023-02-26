class A {
  @override
  String toString() {
    super.toString();
    return 'This is a string, A';
  }
}

void main() {
  var a = A();

  var str = a.toString();
  print('str --> $str');
}
