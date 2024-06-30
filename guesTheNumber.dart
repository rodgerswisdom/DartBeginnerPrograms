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

String? name, response ;
int? min, max;
int? random_figure, guess = 0;

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

void make_guess() {
  print('Make a Guess and Press Enter: ');
  guess = int.parse(stdin.readLineSync()!);

  print('Your number is $guess');
}

// bug
String evaluate_guess(){
 
    
    make_guess();
 while ( guess != null) {

    if (random_figure == null) {
      response = 'Nothing entered';
    }
    if (guess! < random_figure!) {
      response = 'Very Low!!!. Try again';
    } else if( guess! > random_figure! ) {
      response = 'Very High!!!. Try again';
    } else if( guess! == random_figure! ) {
      response = 'Correct!!! :)';
    } else {
      response = 'Invalid!!!';
    }
    make_guess();
  }
 return '$response';
}

int main() {

  print('Guess the Number');
  greeting();
  print('Range');
  number_range();
  // random_number();
  // make_guess();
  evaluate_guess();

  return 0;
}