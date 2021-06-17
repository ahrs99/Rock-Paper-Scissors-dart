//This is a simple game to practice dart
import 'dart:io';

void main() {
  while (true) {
    stdout.write("Rock paper or scissors? (r,p,s) ");
    final input = stdin.readLineSync();
    if (input == "r" || input == "p" || input == "s") {
      print(input);
    } else if (input == "q") {
      break;
    } else {
      print("Invalid input");
    }
  }
}
