import 'dart:io';
import 'package:dart_basic_calculator/dart_basic_calculator.dart'
    as dart_basic_calculator;

void main(List<String> arguments) {
  var availableOperations = {
    '1': dart_basic_calculator.additon,
    '2': dart_basic_calculator.subtraction,
    '3': dart_basic_calculator.multiplication,
    '4': dart_basic_calculator.division,
  };

  print('Available operations: ');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');

  try {
    stdout.write('Please select number of operation you want to perform: ');
    int operation = int.parse(stdin.readLineSync()!);

    if (!availableOperations.containsKey(operation.toString())) {
      throw Exception('Invalid operation selected.');
    }

    stdout.write('Enter first number: ');
    double firstNumber = double.parse(stdin.readLineSync()!);

    stdout.write('Enter second number: ');
    double secondNumber = double.parse(stdin.readLineSync()!);

    print(
        'Result: ${availableOperations[operation.toString()]!(firstNumber, secondNumber)}');
  } on FormatException {
    print('Invalid input. Please enter a number.');
  } catch (e) {
    print(e);
  }
}
