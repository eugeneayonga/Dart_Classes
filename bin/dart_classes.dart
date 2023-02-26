import 'package:dart_classes/dart_classes.dart' as dart_classes;
import 'package:dart_classes/dart_classes_basic_class.dart'
    as dart_classes_basic_class;
// import 'package:dart_classes/dart_classes_instance_variables.dart'
//     as dart_classes_instance_variables;
// import 'package:dart_classes/dart_classes_methods.dart' as dart_classes_methods;
import 'package:dart_classes/dart_class_named_constructors.dart'
    as dart_class_named_constructors;

import 'package:dart_classes/dart_classes_redirecting_constructors.dart'
    as dart_classes_redirecting_constructors;
import 'package:dart_classes/dart_classes_constant_constructors.dart'
    as dart_classes_constant_constructors;

void main(List<String> arguments) {
  print('Hello world: ${dart_classes.calculate()}!');

  print(dart_classes_basic_class.A());

  // print(dart_classes_instance_variables.fieldDisplay());

  // print(dart_classes_methods.methodDisplay());

  print(dart_class_named_constructors.namedConstructorDisplay());

  print(dart_classes_redirecting_constructors.namedConstructorDisplay());

  print(dart_classes_constant_constructors.cartesianPoint());
}
