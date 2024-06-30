import 'dart:io';
import 'dart:math';

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

//Global Variables

String? name;
int? min, max;
int? random_figure, guess;

/**
 * Greeting function
 * @name - name of user
 */
 // Global variable to be able to use in different functions

void greeting(){
  print('Enter your name: ');
  name = stdin.readLineSync();

  print('Hello, $name :). Welcome to the Game.Press Enter to continue');
  stdin.readLineSync();
}

void number_range() {
  print('Enter the lowest number: ');
  min = int.parse(stdin.readLineSync()!);
  print('Enter the lowest number: ');
  max = int.parse(stdin.readLineSync()!);

  print("Your Range is $min - $max");
}

void random_number() {
  var random = new Random();
  random_figure = random.nextInt(max! - min! +1) + min!;
  print(random_figure);
}

int main() {

  print('Guess the Number');
  greeting();
  print('Range');
  number_range();
  // random_number();

  return 0;
}