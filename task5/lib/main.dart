import 'dart:io';
import 'dart:math';

main(){
List<String> doctors=[];
String answer;
int salary;
int i=1;
int totalsalary=0;
int maxsalary=0;
do{
  print("enter doctor name $i");
  doctors.add(stdin.readLineSync()!);
  print("do you need another doctor ${i+1}? yes or no");
  answer=stdin.readLineSync()!.toLowerCase();
  i++;

}
while(answer=="yes");
for(int i=0;i<doctors.length;i++){
  print("enter the salary for doctor ${doctors[i]} :");
  salary=int.parse(stdin.readLineSync()!);
  totalsalary +=salary;
  if(salary>maxsalary){
    maxsalary=salary;
  }

}
double averagsalary=totalsalary / doctors.length;
print("total salary = $totalsalary");
print("max salary = $maxsalary");
print("average salary = $averagsalary");

}