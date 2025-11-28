import 'dart:io';

main() {
  print("set1\n------------------------\n1\t3\t5\n7\t9\t11\n13\t15\t17\n19\t21\t23\n25\t27\t29");
  print("\nset2\n------------------------\n2\t3\t6\n7\t10\t11\n14\t15\t18\n19\t22\t23\n26\t27\t30");
  print("\nset3\n------------------------\n4\t5\t6\n7\t12\t13\n14\t15\t20\n21\t22\t23\n28\t29\t30");
  print("\nset4\n------------------------\n8\t9\t10\n11\t12\t13\n14\t15\t24\n25\t26\t27\n28\t29\t30");
  print("\nset5\n------------------------\n16\t17\t18\n19\t20\t21\n22\t23\t24\n25\t26\t27\n28\t29\t30");

  print("\nChoose a number in your head...");
  print("Answer the following questions with (y / n)\n");

  int result = 0;

  stdout.write("Is your number in set1? (y/n): ");
  String s1 = stdin.readLineSync()!;
  if (s1 != null && s1.toLowerCase() == 'y') {
    result += 1;
  }

  stdout.write("Is your number in set2? (y/n): ");
  String? s2 = stdin.readLineSync();
  if (s2 != null && s2.toLowerCase() == 'y') {
    result += 2;
  }

  stdout.write("Is your number in set3? (y/n): ");
  String s3 = stdin.readLineSync()!;
  if (s3 != null && s3.toLowerCase() == 'y') {
    result += 4;
  }

  stdout.write("Is your number in set4? (y/n): ");
  String s4 = stdin.readLineSync()!;
  if (s4 != null && s4.toLowerCase() == 'y') {
    result += 8;
  }

  stdout.write("Is your number in set5? (y/n): ");
  String s5 = stdin.readLineSync()!;
  if (s5 != null && s5.toLowerCase() == 'y') {
    result += 16;
  }

  print("\nYour number is: $result");
}
