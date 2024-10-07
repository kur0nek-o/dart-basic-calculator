import 'dart:io';
import 'package:dart_basic_calculator/dart_basic_calculator.dart'
    as dart_basic_calculator;

void main(List<String> arguments) {
  var availableOperations = [1, 2, 3, 4];

  print('Available operations: ');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');

  try {
    stdout.write('Please select number of operation you want to perform: ');
    int operation = int.parse(stdin.readLineSync()!);

    if (!availableOperations.contains(operation)) {
      throw Exception('Invalid operation selected.');
    }

    print('selected operation: $operation');
  } on FormatException {
    print('Invalid input. Please enter a number.');
  } catch (e) {
    print('An error occurred: $e');
  }
}
