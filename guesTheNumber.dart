import 'dart:io';

/**
 * computer generates random numbers to some range
 * the use guesses the number
 * Computer lets the user know if the number is too high, too low or correct
 * the user tries again till the number is found
 * user enter range - from 1 - 17
 * computer generates number - 14
 * user enters a guess - 7
 * computer - too low, try again
 * user enter - 17
 * computer - too high
 * user - 14
 * computer - correct
 * computer prints 14 
 */

/**
 * Greeting function
 * @name - name of user
 */
String? name; // Global variable to be able to use in different functions

void greeting(){
  print('Enter your name: ');
  name = stdin.readLineSync();

  print('Hello, $name :)');
}

int main() {

  greeting();

  return 0;
}