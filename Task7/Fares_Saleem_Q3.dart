import "dart:io";

void main() {
  print("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!);

  print("Divisors of $num: ${DivisorsOfN(num)}");
}

List<int> DivisorsOfN(int N) {
  List<int> divisors = [];
  for (int i = 1; i <= N; i++) {
    if (N % i == 0) {
      divisors.add(i);
    }
  }
  return divisors;
}
