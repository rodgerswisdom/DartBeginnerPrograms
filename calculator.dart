import 'dart:io';

/**
  * Calculator Program - Dart
  * @num1 - number 1
  * @num2 - number 2
  * @numx - number
  * sum - addition
  * subtract - subtraction
  * divide - Division
  * multiply - Multiplication
  * negate - negate a number
 */

 int sum ( num1, num2 ) {
    return num1 + num2;
 }

 int subtract ( num1, num2 ) {
    return num1 - num2;
 }

 int divide ( num1, num2 ) {
    return num1 ~/ num2;
 }

 int multiply ( num1, num2 ) {
    return num1 * num2;
 }

 int negate ( numx ) {
    return -numx;
 }

 List<int> readnumbers() {
    print("Enter the first number: ");
    int? num1 = int.parse(stdin.readLineSync()!);

    print("Enter the second number: ");
    int? num2 = int.parse(stdin.readLineSync()!);

    print('You have entered $num1 and $num2 . Press Enter to continue :)');
     stdin.readLineSync();

    return [num1, num2];
  } 

 int main() {

  print('|--------------------------------------------|');
  print('|             CALCULATOR                     |');
  print('|--------------------------------------------|');

  print('               1. Addittion                 ');
  print('               2. Subtraction               ');
  print('               3. Division                  ');
  print('               4. Multiplication            ');
  print('               5. Negation                  ');


  /**
    * Standard input/output
    */
  print("Choose operation e.g 1 for Addittion: ");

  //Scanning the number 

  int? choice = int.parse(stdin.readLineSync()!);

  // Print the number entered

  print('You have entered choice $choice');

  List<int> numbers = readnumbers();

  // print(' Whats your name?: ');
  // String? name = stdin.readLineSync();
  // print('Your name is $name');
  // print("Enter the first number: ");
  // int? num1 = int.parse(stdin.readLineSync()!);

  // print("Enter the second number: ");
  // int? num2 = int.parse(stdin.readLineSync()!);

  // if (choice == 1) {
  //   print(sum(num1,num2));
  // }
  // else if(choice == 2) {
  //   print(subtract(num1,num2));
  // }
  // else if(choice == 2) {
  //   print(divide(num1,num2));
  // }
  // else if(choice == 2) {
  //   print(multiply(num1,num2));
  // }
  // else {
  //   print('Invalid Choice!!!');
  // }

  switch(choice) {
    case(1) : {
      print(sum(numbers[0], numbers[1]));
    }break;
    case(2) : {
      print(subtract(numbers[0], numbers[1]));
    }break;
    case(3) : {
      print(divide(numbers[0], numbers[1]));
    }break;
    case(4) : {
      print(multiply(numbers[0], numbers[1]));
    }break;
    default : {
      print('Invalid Choice!!!');
    }break;
  }

  return 0;
 }

