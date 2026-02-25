void forl() {
  var names = ['Alice', 'Bob', 'Charlie'];
  var numbers = [10, 20, 30, 40, 50];

  print('basic for loop:');
  for (var i = 0; i < 5; i++) {
    print('i: $i');
  }

  print('\nfor-in loop:');
  for (var number in numbers) {
    print('number: $number');
  }

  print('\nforEach loop:');
  numbers.forEach((value) {
    print('value: $value');
  });

  print('\nwhile loop:');
  while (true) {
    print('This will run forever!');
    break; // To prevent an infinite loop, we use 'break' to exit the loop.
  }

  print('\nindex loop:');
  names.asMap().forEach((index, value) {
    print('index: $index, value: $value');
  });
}

void main() {
  forl();
}
