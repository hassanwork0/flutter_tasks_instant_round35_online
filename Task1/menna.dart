import 'dart:io';

void main() {
  print('Please enter your age:');
  int userAge = int.parse(stdin.readLineSync()!);
  ageCategory(userAge);
}

void ageCategory(int age) {
  if (age < 12)
    print('Child');
  else if (age <= 17)
    print('Teenager');
  else if (age <= 59)
    print('Adult');
  else
    print('Senior');
}
