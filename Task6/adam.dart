import 'dart:io';

void main() {
  List<String> doctorNames = [];
  List<int> doctorSalary = [];
  String answer;
  //to put doctores name
  int i = 1;
  do {
    stdout.write("Enter Doctor is name $i : ");
    doctorNames.add(stdin.readLineSync()!);
    stdout.write("Do you want to add another Doctor Yes/No : ");
    answer = stdin.readLineSync()!.toUpperCase();
    i++;
  } while (answer == "YES");
  // doctores salaryes
  int N = 0;
  do {
    stdout.write("Enter Doctor ${doctorNames[N]} is Salary : ");
    doctorSalary.add(int.parse(stdin.readLineSync()!));
    N++;
  } while (N < doctorNames.length);

  ///total salaryes
  int sum = 0;
  for (int x in doctorSalary) {
    sum += x;
  }

  //max salary
  int maxSalary = doctorSalary[0];
  for (int i = 1; i < doctorSalary.length; i++) {
    if (doctorSalary[i] > maxSalary) {
      maxSalary = doctorSalary[i];
    }
  }
  ////////////////////////////////
  print("Total Salaryes : = $sum");
  print("Avarage : ${sum / doctorSalary.length}");
  print("Max Salary: $maxSalary");
}
