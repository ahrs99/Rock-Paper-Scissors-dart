//This is a simple game to practice dart
import 'dart:io';

import 'dart:math';

enum Move { rock, paper, scissors }
void main() {
  final rng = Random();
  while (true) {
    stdout.write("Rock paper or scissors? (r,p,s) ");
    final input = stdin.readLineSync();
    if (input == "r" || input == "p" || input == "s") {
      var user_move;

      if (input == "r") {
        user_move = Move.rock;
      } else if (input == "p") {
        user_move = Move.paper;
      } else {
        user_move = Move.scissors;
      }

      int index = rng.nextInt(3);
      var aiMove = Move.values[index];
      if (aiMove == user_move) {
        print("You and Ai both played ${user_move.toString().replaceAll("Move.", "")} so it's a draw");
      } else if (user_move == Move.paper && aiMove == Move.rock ||
          user_move == Move.rock && aiMove == Move.scissors ||
          user_move == Move.scissors && aiMove == Move.paper) {
        print("You played ${user_move.toString().replaceAll("Move.", "")} and Ai played ${aiMove.toString().replaceAll("Move.", "")} so you won!");
      } else {
        print("You played ${user_move.toString().replaceAll("Move.", "")} and Ai played ${aiMove.toString().replaceAll("Move.", "")} so you lost!");
      }
    } else if (input == "q") {
      break;
    } else {
      print("Invalid input");
    }
  }
}
