// Differece between js and dart
void test1() {
  var x = 10, y;
  y = 20;
  // it will give an error => A value of type 'String' can't be assigned to a variable of type 'int'.
  // x = 'joy';
  print('x: $x, y: $y');
}

void test2() {
  // In Dart, we can use 'dynamic' to allow variables to hold values of any type.
  dynamic x = 10.32432432, y;
  x = 'joy';
  y = 30.5;
  y = 'hello';
  print('x: $x, y: $y');
}

void test3() {
  // num is a supertype of both int and double, so it can hold either type of value.
  num x = 10, y;
  x = 10.32432432;
  y = 20;
  print('Before change =>  x: $x, y: $y');

  // we can change the value of x and y to either int or double, but we cannot assign a string to them.
  x = 15;
  y = 25.5;
  print('After change => x: $x, y: $y');
}

void list() {
  // In Dart, we can use 'List' to create a list of values. Basically kind of array in js.
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Numbers: $numbers');

  List<String> namesArray = [];
  namesArray.add('joy');
  namesArray.add('doe');
  namesArray.remove('joy');
  print('Names: $namesArray');

  // We can also use 'var' or 'dynamic' to create a list that can hold values of any type.
  var mixedList = [1, 'hello', true, 3.14];
  mixedList[0] = 'hello';
  print('Mixed List: $mixedList');

  List<dynamic> anotherMixedList = [1, 'world', false];
  anotherMixedList[0] = 'dart';
  print('Another Mixed List: $anotherMixedList');
}

void list4() {
  var list = [1, 2, 3, 4, 5];
  var list2 = [6, 7, 8, 9, 10];
  var combinedList = [...list, ...list2];
  print('Combined List: $combinedList');
}

void main() {
  // test1();
  // test2();
  // test3();
  // list();
  list4();
}
