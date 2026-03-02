//                 Basic  Class

// class basically akta blueprint or model. Class er moddhe jah jah thakbe object er moddhe o same thakbe.
// A class is a blueprint for creating objects. A class defines the properties and methods that an object will have. For example, a class called Dog might have properties like breed, color and methods like bark, run.

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

void manualAssign() {
  Student student1 = Student();
  student1.name = 'Alice';
  student1.age = 20;
  student1.depart = 'Computer Science';
  student1.showInfo();
}

void seetterExample() {
  Student student2 = Student();
  student2.setter('Bob', 22, 'Mathematics');
  student2.getter();
}

void constructorExample() {
  StudentWithConstructor student3 = StudentWithConstructor('joy', 25, 'CSE');
  student3.showInfo();
}

void main() {
  manualAssign();

  // manually assing er prob hocche bar bar amake define kora lagbe. For example name , age, depet.
  // But setter or constructor use korle amake bar bar define kora lagbe na. Just ekbar setter or constructor define kore dilei hobe.
  seetterExample(); //useing setter
  constructorExample(); //useing constructor
}
