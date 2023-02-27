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
import 'package:dart_classes/dart_classes_factory_constructors.dart'
    as dart_classes_factory_constructors;
import 'package:dart_classes/dart_classes_singleton_pattern.dart'
    as dart_classes_singleton_pattern;

void main(List<String> arguments) {
  print('Hello world: ${dart_classes.calculate()}!');

  print(dart_classes_basic_class.A());

  // print(dart_classes_instance_variables.fieldDisplay());

  // print(dart_classes_methods.methodDisplay());

  print(dart_class_named_constructors.namedConstructorDisplay());

  print(dart_classes_redirecting_constructors.namedConstructorDisplay());

  print(dart_classes_constant_constructors.cartesianPoint());

  print('************************************************************');
  print(dart_classes_factory_constructors.factoryPoint());

  print('************************************************************');
  print(dart_classes_singleton_pattern.singletonToDisplay());
}
