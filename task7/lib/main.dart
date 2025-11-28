import 'dart:io';

main(){

 checkPrime();

}
 void years100(){
  stdout.writeln("enter your name");
  String name=stdin.readLineSync()!;
  stdout.writeln("enter your age");
  int age= int.parse(stdin.readLineSync()!);
  int remainingAge= 100-age;
  print("Hello $name! You have $remainingAge years until you turn 100.");
 }
void showLessThanFive() {
  List<int> A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> result = [];

  for (int i = 0; i < A.length; i++) {
    if (A[i] < 5) {
      result.add(A[i]);
    }
  }

  print("Elements less than 5: $result");
}
void showDivisors() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  List<int> divisors = [];

  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      divisors.add(i);
    }
  }

  print("Divisors of $number: $divisors");
}
void showCommonElements() {
  List<int> A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> B = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  Set<int> setA = A.toSet();
  Set<int> setB = B.toSet();

  Set<int> common = setA.intersection(setB);

  print("Common elements: ${common.toList()}");
}
void checkPrime() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  if (number <= 1) {
    isPrime = false;
  } else {
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        isPrime = false;
        break;
      }
    }
  }

  if (isPrime) {
    print("$number is a prime number.");
  } else {
    print("$number is not a prime number.");
  }
}