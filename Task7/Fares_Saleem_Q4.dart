import "dart:io";
import "dart:collection";

void main() {
  List<int> A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> B = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  HashSet<int> common = HashSet();

  for (int i = 0; i < A.length; i++) {
    for (int j = 0; j < B.length; j++) {
      if (A[i] == B[j]) {
        common.add(A[i]);
      }
    }
  }
  print("Common elements: $common");

  //faster way
  print(A.toSet().intersection(B.toSet()););

}
