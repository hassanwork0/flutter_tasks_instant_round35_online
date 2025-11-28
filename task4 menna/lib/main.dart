import 'dart:io';
import 'dart:math';

void main() {
  int correctAnswers = 0;
  int incorrectAnswers = 0;
  int level = 1;
  int correctInRow = 0;
  bool play = true;

  print("Welcome to Math Game");

  while (play) {
    int num1 = generateNumber(level);
    int num2 = generateNumber(level);

    String operation = getRandomOperation();
    int correctResult = calculate(num1, num2, operation);

    print("\nLevel $level Question:");
    print("$num1 $operation $num2 = ?");

    stdout.write("Your answer: ");
    int userAnswer = int.parse(stdin.readLineSync()!);

    if (userAnswer == correctResult) {
      print("Correct");
      correctAnswers++;
      correctInRow++;
    } else {
      print("Wrong. The correct answer is $correctResult");
      incorrectAnswers++;
      correctInRow = 0;
    }

    if (correctInRow == 3) {
      level++;
      correctInRow = 0;
      print("Level Up. Now you are level $level");
    }

    stdout.write("\nDo you want to continue? (y/n): ");
    String choice = stdin.readLineSync()!;

    if (choice.toLowerCase() != 'y') {
      play = false;
    }
  }

  print("\nGame Over");
  print("Correct Answers: $correctAnswers");
  print("Incorrect Answers: $incorrectAnswers");
}

int generateNumber(int level) {
  Random random = Random();
  if (level == 1) return random.nextInt(10) + 1;
  if (level == 2) return random.nextInt(30) + 1;
  return random.nextInt(50) + 1;
}

String getRandomOperation() {
  List<String> ops = ['+', '-', '*'];
  Random random = Random();
  return ops[random.nextInt(ops.length)];
}

int calculate(int a, int b, String op) {
  if (op == '+') return a + b;
  if (op == '-') return a - b;0
  return a * b;
}
