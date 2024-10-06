import "dart:io";
import "dart:math";

void main (){
  String running = ("yes");
  do {print("Choose a level by typing in 1 or 2\nLevel 1 (1-100) \nLevel 2 (1-1000)");
  int? level = int.tryParse(stdin.readLineSync()!);


  if (level == 1){var random = Random();
    int randomnumbl1 = random.nextInt(100);
    int guesscount = 0;
    while (true){
      if (guesscount < 10){
        print("Guess a number:");
        int? guess = int.tryParse(stdin.readLineSync()!);
        if (guess == randomnumbl1){
          print("You are correct the number was $randomnumbl1");
          break;
          }
        if (guess !< randomnumbl1){
          print("The number is higher then $guess");
          guesscount += 1;
        }
        if (guess !> randomnumbl1){
          print("The number is lower then $guess");
          guesscount += 1;
        }}
      else {
        print("You ran out of guesses.");
        break;
      }
    }
  }
  if (level == 2){var random = Random();
    int randomnumbl2 = random.nextInt(1000);
    int guesscount = 0;
    while (true){
      if (guesscount < 10){
        print("Guess a number:");
        int? guess = int.tryParse(stdin.readLineSync()!);
        if (guess == randomnumbl2){
          print("You are correct the number was $randomnumbl2");
          break;
          }
        if (guess !< randomnumbl2){
          print("The number is higher then $guess");
          guesscount += 1;
        }
        if (guess !> randomnumbl2){
          print("The number is lower then $guess");
          guesscount += 1;
        }}
      else {
        print("You ran out of guesses.");
        break;
      }
    }
  }
  print("Do you want to play again?(type yes or no)");
  running = stdin.readLineSync()!;
  }

  while (running.toLowerCase() == ("yes"));

}