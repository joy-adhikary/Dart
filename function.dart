// syntax

// returnType functionName ( para1Type parameter1, para2Type parameter2, ... ) {
//   // function body
// }

// Anonymous function syntax => (parameters) { function body }

// optional parameters & default value of a parameter 2 tai [] er majhe likha hoi

void add(int a, int b, [int c = 1]) {
  int sum = a + b + c;
  print("The sum is: $sum");
}

// arrow funciton
int addArrow(int a, int b, [int c = 1]) => a + b + c;

// arrow function multiple line suport kore nah so eitake anonymous function er maddhome kora jai
var AnonymousFuction = (int a, int b) {
  int sum = a + b;
  return sum;
};

void main() {
  // This will use the default value of c, which is 1, so the sum will be 2 + 3 + 1 = 6
  add(2, 3);
  add(2, 3, 2);
  print('AnonymousFuction(2, 3) = ${AnonymousFuction(2, 3)}');
}
