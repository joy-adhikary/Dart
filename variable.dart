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

// map
void maps() {
  Map<String, int> ages = {};
  ages = {'Alice': 30, 'Bob': 25, 'Charlie': 35};
  print('Ages: $ages');

  var map = {};
  map = {'name': 'joy', 'age': 30, 'isStudent': true};
  print('Map: $map');

  // jodi index exist kore tahole update korbe, na hole add korbe
  map['name'] = 'doe'; // update
  map['city'] = 'New York'; // add
  print('Updated Map: $map');

  // check if a key or value exists in the map
  if (map.containsKey('name')) {
    if (map.containsValue('doe')) {
      print('Value "doe" and Key "name" exists in the map.');
    } else
      print('Only Key "name" exists in the map.');
  } else {
    print('Neither key "name" nor value "doe" exists in the map.');
  }
}

void main() {
  // test1();
  // test2();
  // test3();
  // list();
  // list4();
  maps();
}
