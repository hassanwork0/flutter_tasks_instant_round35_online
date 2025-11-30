import 'dart:io';
import 'dart:math';

enum enOperations { Multiplication, Addition, Subtraction, Division }
enum enLevels { LowLevel, MidLevel, HighLevel }

// Initialize generic variables
enOperations operationType = enOperations.Multiplication;
enLevels level = enLevels.LowLevel;
Random random = Random();
int correctAnswers = 0;
int incorrectAnswers = 0;
int num1 = 0, num2 = 0;

void main() {
  bool continueGame = true;
  int questionCounter = 0;
  String isContinue;

  while (continueGame) {
    questionCounter++;
    print("\nLevel: $level  -  Operation: ${getOperationSymbol(operationType)}  -  Question $questionCounter");
    generateQuestion();
    stdout.write("Your answer: ");
    operateAnswer(int.parse(stdin.readLineSync()!));

    stdout.write("\nDo you want to continue? (Y/N): ");
    isContinue = stdin.readLineSync()!;
    continueGame = isContinue.toUpperCase().startsWith('Y');
  }
  finalScores();
}

void finalScores(){
    print("Correct: $correctAnswers, Incorrect: $incorrectAnswers");
}

/// Generating based on: level & operationType
void generateQuestion() {
  num1 = generateNumber(level);
  num2 = generateNumber(level);

  print("$num1 ${getOperationSymbol(operationType)} $num2 = ?");
}
void operateAnswer(int userAnswer) {
  int correctAnswer = calculateCorrectAnswer(num1, num2);
  bool advancedLevel = false;

  if (isCorrectAnswer(userAnswer, correctAnswer)) {
    correctAnswers++;
    print("\"Correct answer!\"");

    if (correctAnswers % 3 == 0) {
      if (operationType == enOperations.Division && level == enLevels.HighLevel) {
        print("🎉 Congratulations! You've reached the maximum level and operation!");
        finalScores();
        exit(0); // terminate program
      } else {
        if (operationType == enOperations.Division) {
          level = nextLevel(level);
          advancedLevel = true;
        }
        operationType = nextOperation(operationType);

        print("Upgraded!\nOperation is now: ${getOperationSymbol(operationType)}");
        if (advancedLevel) print("Level advanced to: $level");
      }
    }
  } else {
    incorrectAnswers++;
    print("❌ Incorrect. The correct answer is: $correctAnswer");
  }
}


int generateNumber(enLevels level) {
  switch (level) {
    case enLevels.LowLevel:
      return random.nextInt(10) + 1; // 1-10
    case enLevels.MidLevel:
      return random.nextInt(50) + 1; // 1-50
    case enLevels.HighLevel:
      return random.nextInt(100) + 1; // 1-100
  }
}

String getOperationSymbol(enOperations op) {
  switch (op) {
    case enOperations.Multiplication:
      return '*';
    case enOperations.Addition:
      return '+';
    case enOperations.Subtraction:
      return '-';
    case enOperations.Division:
      return '÷';
  }
  return '?';
}

int calculateCorrectAnswer(int a, int b) {
  switch (operationType) {
    case enOperations.Multiplication:
      return a * b;
    case enOperations.Addition:
      return a + b;
    case enOperations.Subtraction:
      return a - b;
    case enOperations.Division:
      if (b == 0) b = 1;
      return a ~/ b; // Integer Division Operator
  }
  return a * b;
}

bool isCorrectAnswer(int userAnswer, int correctAnswer) {
  return userAnswer == correctAnswer;
}

enOperations nextOperation(enOperations op) {
  int i = enOperations.values.indexOf(op);
  if (i < enOperations.values.length - 1) {
    return enOperations.values[i + 1];
  } else {
    return enOperations.values.first;  // wrap to first
  }
}

enLevels nextLevel(enLevels lev) {
  int i = enLevels.values.indexOf(lev);
  if (i < enLevels.values.length - 1) {
    return enLevels.values[i + 1];
  }
  return enLevels.values.last; // stay at max level
}
