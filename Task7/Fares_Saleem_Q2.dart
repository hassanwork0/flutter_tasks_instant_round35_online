import "dart:io";
void main(){
	List<int> A = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
	int ceil=5;
	print(MinimumRangeOfN(A,ceil));
}

List<int> MinimumRangeOfN(List<int>l,int ceil){
	List<int> resultList = [];
	for(var i in l){
		if(i<ceil)
			resultList.add(i);
	}
	return resultList;
}
