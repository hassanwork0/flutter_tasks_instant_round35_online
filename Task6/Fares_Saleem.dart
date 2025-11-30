import "dart:io";

void main() {
  String answer, name;
  int salary, totalSum;
  double avgSalary;
  
  List<String> listNames = [];
  List<int> listSalary = [];
  Map<String, int> doctorsSalaryMap = {};

  // Input names
  do {
    stdout.write("Enter doctor's name: ");
    name = stdin.readLineSync()!.trim();

    while (name.isEmpty) {
      stdout.write("Invalid! Enter a valid name: ");
      name = stdin.readLineSync()!.trim();
    }
    listNames.add(name);

    stdout.write("Do you want to enter another doctor? (yes/no): ");
    answer = stdin.readLineSync()!.trim();
  } while (answer.toUpperCase().startsWith("Y"));

  // Input salaries
  for (var name in listNames) {
    stdout.write("Enter salary of Dr. $name: ");
    salary = int.parse(stdin.readLineSync()!);

    while (!isValidSalary(salary)) {
      stdout.write("Invalid! Enter a valid salary for Dr. $name: ");
      salary = int.parse(stdin.readLineSync()!);
    }
    listSalary.add(salary);
    doctorsSalaryMap[name] = salary;
  }

  totalSum = getTotalSum(listSalary);
  avgSalary = getAverage(listSalary.length, totalSum);

  print("\n===== Results =====");
  print("Total Salary: $totalSum");
  print("Average Salary: $avgSalary");
  print("Highest Salary: ${getMax(listSalary)}");
  print("\nDoctor Salary Map:");
  printMap(doctorsSalaryMap);
}

// Functions
bool isValidSalary(int salary){
  return salary > 0;
}

int getTotalSum(List<int> list) {
  int total = 0;
  for (int s in list) {
    total += s;
  }
  return total;
}

double getAverage(int count, int totalSum){
  return totalSum / count;
}

int getMax(List<int> list) {
  int max = list[0];
  for (int s in list) {
    if (s > max) max = s;
  }
  return max;
}

void printMap(Map<String, int> map) {
  map.forEach((name, salary) {
    print("Dr. $name → $salary");
  });
}
