import "dart:io";
void main(){
	strign name;
	int age;

	print("Enter your name: ");
	name = stdin.readLineSync()!;
	
	print("Enter your age: ");
	age = int.parse(stdin.readLineSync()!);
	
	pritn("Hello $name ! Yow have ${100-age} years until you turn 100.");
}