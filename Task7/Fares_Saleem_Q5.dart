import "dart:io";

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (checkPrime(number)) {
    print("$number is a prime number");
  } else {
    print("$number is not a prime number");
  }
}

bool checkPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
