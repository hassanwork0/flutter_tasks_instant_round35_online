import 'dart:io';

main() {
  List<String> x = [];
  List<int> s = [];
  String z;
  int i = 0;
  do {
    i++;
    stdout.write("Enter Doctor$i name:  \t");
    x.add(stdin.readLineSync()!);

    stdout.write("Do you want continue (yes/no) ?\t");
    z = stdin.readLineSync()!.toLowerCase();
  } while (z == "yes");
  for (int i = 0; i < x.length; i++) {
    stdout.write("Enter the Salary of the doctor ${x[i]} :\t");
    s.add(int.parse(stdin.readLineSync()!));
  }
int max=0;
int min=s[0];
  double average ;
  double sum=0;
  for (int v in s) {
     sum = sum  +v ;
     if(v>max){
       max=v;
     }

     if(v-1< min){
      min = v;}
    }
  print("----------------------\n");

  for(int i =0;i<x.length;i++ ){
    print("Doctor\t  ${x[i]}'s salary is:\t ${s[i]} ");

  }
  print("----------------------\n");
  print("Highest salary = $max");
  print("Lowest salary = $min");
  print(" All Salaries = $sum");
  average = sum/s.length;
  print("The salaries average = $average ");
  print("----------------------");

    }
