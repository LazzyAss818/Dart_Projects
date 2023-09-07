import 'dart:io';

void main() {
  print('----------------------Calcultor------------------'); // Title

  print(
      'Choose any number:\n1 for +\n2 for -\n3 for *\n4 for /\n5 for %.\n6 for all.\n');

  // Input for Menu options and numbers.
  try {
    print('Enter a number from the menu: ');
    String menuInput = stdin.readLineSync().toString();
    int operationInput = int.parse(menuInput);

    print('Enter first number: ');
    String numInput1 = stdin.readLineSync().toString();
    double num1 = double.parse(numInput1);
    print('Enter second number: ');
    String numInput2 = stdin.readLineSync().toString();
    double num2 = double.parse(numInput2);

    // Swtich statement to check what operation to be done
    switch (operationInput) {
      case 1:
        double result1 = calc(num1: num1, num2: num2).$1;
        print('$num1 + $num2: Result = $result1');
      case 2:
        double result2 = calc(num1: num1, num2: num2).$2;
        print('$num1 - $num2: Result = $result2');
      case 3:
        double result3 = calc(num1: num1, num2: num2).$3;
        print('$num1 * $num2: Result = $result3');
      case 4:
        double result4 = calc(num1: num1, num2: num2).$4;
        print('$num1 / $num2: Result = $result4');
      case 5:
        double result5 = calc(num1: num1, num2: num2).$5;
        print('$num1 % $num2: Result = $result5');
      case 6:
        double result1 = calc(num1: num1, num2: num2).$1;
        double result2 = calc(num1: num1, num2: num2).$2;
        double result3 = calc(num1: num1, num2: num2).$3;
        double result4 = calc(num1: num1, num2: num2).$4;
        double result5 = calc(num1: num1, num2: num2).$5;
        print(
            '''$num1 + $num2: Result = $result1\n$num1 - $num2: Result = $result2\n$num1 * $num2: Result = $result3\n$num1 / $num2: Result = $result4\n$num1 % $num2: Result = $result5''');
      default:
        print('Please Enter a valid operation!');
    }
  } catch (e) {
    print('Wrong number or of different type!');
  }
}

// Function for different operations.
(double, double, double, double, double) calc({required num1, required double num2}) {
  double add = num1 + num2;
  double sub = num1 - num2;
  double mul = num1 * num2;
  double div = num1 / num2;
  double rem = num1 % num2;
  return (add, sub, mul, div, rem);
}
