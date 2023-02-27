// GETTERS
// GETTERS --> when you access a field from a class, you are actually calling a getter method

class Car {
  late int age;
  set yearOfManufacture(int year) => age = DateTime.now().year - year;
}

dynamic yomDisplay() {
  var car = Car();
  car.yearOfManufacture = 2015;
  print('The car is ${car.age} years old!');
}
