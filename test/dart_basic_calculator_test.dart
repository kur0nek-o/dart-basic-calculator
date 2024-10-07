import 'package:dart_basic_calculator/dart_basic_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Calculator Tests', () {
    test('Addition should return correct sum', () {
      expect(additon(2, 3), equals(5));
      expect(additon(-2, 3), equals(1));
    });

    test('Addition should return incorrect sum (Negative Test)', () {
      expect(additon(2, 3), isNot(equals(6)));
    });

    test('Subtraction should return correct difference', () {
      expect(subtraction(5, 2), equals(3));
      expect(subtraction(0, 5), equals(-5));
    });

    test('Subtraction should return incorrect difference (Negative Test)', () {
      expect(subtraction(5, 2), isNot(equals(4)));
    });

    test('Multiplication should return correct product', () {
      expect(multiplication(4, 3), equals(12));
      expect(multiplication(-4, 3), equals(-12));
    });

    test('Multiplication should return incorrect product (Negative Test)', () {
      expect(multiplication(4, 3), isNot(equals(15)));
    });

    test('Division should return correct quotient', () {
      expect(division(6, 3), equals(2.0));
      expect(division(5, 2), equals(2.5));
    });

    test('Division should return incorrect quotient (Negative Test)', () {
      expect(division(6, 3), isNot(equals(3.0)));
    });

    test('Division should return Infinity when dividing by zero', () {
      expect(division(5, 0), equals(double.infinity));
    });
  });
}
