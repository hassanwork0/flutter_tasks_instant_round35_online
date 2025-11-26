import 'dart:io';

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  print('Please enter your age');
  int age = int.parse(stdin.readLineSync()!);
  ageTo100(age);

  lessThan5(a);

  print('Enter a number');
  int num = int.parse(stdin.readLineSync()!);
  dividors(num);

  commonELements(a, b);

  print('Enter a number');
  int number = int.parse(stdin.readLineSync()!);
  numberIsPrime(number);
}

void ageTo100(int age) {
  age = 100 - age;
  print(age);
}

void lessThan5(List<int> l) {
  List<int> l2 = [];

  for (var element in l) {
    if (element < 5) {
      l2.add(element);
    }
  }
  print(l2);
}

void dividors(int num) {
  List<int> l2 = [];

  for (int i = 1; i < num; i++) {
    if (num % i == 0) {
      l2.add(i);
    }
  }
  print(l2);
}

void commonELements(List<int> A, List<int> B) {
  Set<int> common = {};
  for (int i = 0; i < A.length; i++) {
    for (var j = 0; j < B.length; j++) {
      if (A[i] == B[j]) {
        common.add(A[i]);
      }
    }
  }
  print(common);
}

void numberIsPrime(int number) {
  String isPrime = ' Number is Prime';
  for (int i = 2; i < number; i++) {
    if (number % i == 0) {
      isPrime = 'Number is not Prime';
    }
  }
  print(isPrime);
}
