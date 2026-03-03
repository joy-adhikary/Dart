//                 Basic  Class

// class basically akta blueprint or model. Class er moddhe jah jah thakbe object er moddhe o same thakbe.
// A class is a blueprint for creating objects. A class defines the properties and methods that an object will have. For example, a class called Dog might have properties like breed, color and methods like bark, run.

// constructor  syntax
// class ClassName {
//   // Constructor declaration: Same as class name
//   ClassName() {
//     // constructor body
//   }
// }

//  multiple constructor using named constructor
class Student {
  String? name;
  int? age;
  String? depart;

  void showInfo() {
    print('Name: $name, Age: $age, Department: $depart');
  }

  void setter(String name, int age, String depart) {
    this.name = name;
    this.age = age;
    this.depart = depart;
  }

  void getter() {
    print('Name: $name, Age: $age, Department: $depart');
  }
}

class StudentWithConstructor {
  String? name;
  int? age;
  String? depart;

  void showInfo() {
    print('Name: $name, Age: $age, Department: $depart');
  }

  void setter(String name, int age, String depart) {
    this.name = name;
    this.age = age;
    this.depart = depart;
  }

  void getter() {
    print('Name: $name, Age: $age, Department: $depart');
  }

  StudentWithConstructor(String? name, int? age, String? depart) {
    this.name = name;
    this.age = age;
    this.depart = depart;
  }
}

class StudentWithOptionalConstructor {
  String? name;
  int? age;
  String? depart;

  void showInfo() {
    print('Name: $name, Age: $age, Department: $depart');
  }

  StudentWithOptionalConstructor(
    String? name,
    String? depart, [
    int? age = 18,
  ]) {
    this.name = name;
    this.age = age;
    this.depart = depart;
  }
}

class StudentWithNamedConstructor {
  String? name;
  int? age;
  String? depart;

  void showInfo() {
    print('Name: $name, Age: $age, Department: $depart');
  }

  StudentWithNamedConstructor(String? name, int? age, String? depart) {
    this.name = name;
    this.age = age;
    this.depart = depart;
  }

  StudentWithNamedConstructor.withoutAge(String? name, String? depart) {
    this.name = name;
    this.depart = depart;
  }

  StudentWithNamedConstructor.withoutName(String? depart) {
    this.depart = depart;
  }
}

void manualAssign() {
  Student student1 = Student();
  student1.name = 'Alice';
  student1.age = 20;
  student1.depart = 'Computer Science';
  student1.showInfo();
}

void seetterExample() {
  Student student2 = Student();
  Student student3 = Student();
  student2.setter('Bob', 22, 'Mathematics');
  student2.getter();

  student3.name = 'Alice';
  student3.age = 20;
  student3.depart = 'Computer Science';
  student3.showInfo();
}

void constructorExample() {
  StudentWithConstructor student3 = StudentWithConstructor('joy', 25, 'CSE');
  student3.showInfo();
}

void optionalConstructorExample() {
  StudentWithOptionalConstructor student4 = StudentWithOptionalConstructor(
    'Nuri',
    'CSE',
  );
  student4.showInfo();
}

void namedConstructorExample() {
  StudentWithNamedConstructor student5 = StudentWithNamedConstructor.withoutAge(
    'Nuri',
    'CSE',
  );

  StudentWithNamedConstructor student6 =
      StudentWithNamedConstructor.withoutName('Joy');

  StudentWithNamedConstructor student7 = StudentWithNamedConstructor(
    'Joy',
    25,
    'CSE',
  );
  student5.showInfo();
  student6.showInfo();
  student7.showInfo();
}

void main() {
  // manualAssign();
  // manually assing er prob hocche bar bar amake define kora lagbe. For example name , age, depet.
  // But setter or constructor use korle amake bar bar define kora lagbe na. Just ekbar setter or constructor define kore dilei hobe.
  // constructorExample(); //useing constructor
  // optionalConstructorExample(); //useing optional constructor

  //  Named constructor -> c++ a basially amra constructor overloading use kortam. Dart a constructor overloading nai but amra named constructor use korte pari. Named constructor er maddhome amra multiple constructor create korte pari.
  // namedConstructorExample();

  // setter & getter -> setter er maddhome amra class er property gulo ke set korte pari. Getter er maddhome amra class er property gulo ke access korte pari.
  // For example, amra student class er name, age, depart property gulo ke setter er maddhome set korte pari and getter er maddhome access korte pari.

  seetterExample();
}
