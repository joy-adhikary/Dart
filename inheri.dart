// inheritance  means inherit kora. Mane parent class er sokol property and method nijer moddhe niye asha
//  Whenever you use inheritance, it always create a is-a relation between the parent and child class like Student is a Person, Truck is a Vehicle, Cow is a Animal etc.

class bike {
  String? cc;
  int? price;

  setBrand(String cc) {
    this.cc = cc;
  }

  setPrice(int tk) {
    this.price = tk;
  }

  void displayBike() {
    print("Bike CC: $cc");
    print("Bike Price: $price");
  }
}

class yamaha extends bike {
  String? model;
  String? origin;

  setModel(String model) {
    this.model = model;
  }

  setOrigin(String origin) {
    this.origin = origin;
  }

  void displayYamaha() {
    print("Bike Model: $model");
    print("Bike Origin: $origin");
  }
}

class honda extends bike {
  String? colour;

  setColour(String colour) {
    this.colour = colour;
  }

  void displayHonda() {
    print("Bike Colour: $colour");
  }
}

void simpleInheritance() {
  yamaha y = yamaha();
  y.setModel("FZ-S V4");
  y.setOrigin("Japan");
  y.displayYamaha();

  // Those properties and methods are inherited from the bike class
  y.setBrand("150cc");
  y.setPrice(250000);
  y.displayBike();

  print("\n");

  honda h = honda();
  h.setColour("Red");
  h.displayHonda();

  // Those properties and methods are inherited from the bike class
  h.setBrand("125cc");
  h.setPrice(120000);
  h.displayBike();
}

//                                          example of multilevel inheritance

class Person {
  String? name;
  int? age;

  setName(String name) {
    this.name = name;
  }

  setAge(int age) {
    this.age = age;
  }

  void displayPerson() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Type extends Person {
  String? type;

  setType(String type) {
    this.type = type;
  }

  void displayEngineer() {
    print("Person Type: $type");
  }
}

class SoftwareEngineer extends Type {
  String? language;

  setLanguage(String language) {
    this.language = language;
  }

  void displaySoftwareEngineer() {
    print("Programming Language: $language");
  }
}

void multilevelInheritance() {
  SoftwareEngineer joy = SoftwareEngineer();
  joy.language = "Dart";
  joy.displaySoftwareEngineer();

  // Those properties and methods are inherited from the Type class
  joy.type = "Software Engineer";
  joy.displayEngineer();

  // Those properties and methods are inherited from the Person class
  joy.name = "Joy";
  joy.age = 25;
  joy.displayPerson();
}

//                                           example of constructor inheritance

class Student {
  String? name;
  int? age;

  Student(String name) {
    this.name = name;
    print('this is the constructor of the Student class');
  }

  // named constructor
  Student.withAge(int age) {
    this.age = age;
    print('this is the constructor of the Student class');
  }

  void displayStudent() {
    print("Name: $name");
    print("Age: $age");
  }
}

class CollegeStudent extends Student {
  String? roll;

  CollegeStudent(String name, String roll, int age) : super(name) {
    this.roll = roll;
    print('this is the constructor of the CollegeStudent class');
  }

  CollegeStudent.named(String name, String roll, int age) : super.withAge(age) {
    this.roll = roll;
    // super.name = name; // super use kore parent er property access kora
    this.name = name; // direct access kore parent er property access kora
    print('this is the constructor of the CollegeStudent class');
  }

  void displayStudent() {
    print("Roll: $roll");
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  // bike -> yamaha , bike -> honda
  // simpleInheritance();

  // multilevel inheritance -> person -> engineer -> softwareEngineer
  // multilevelInheritance();

  // constructor inheritance -> student -> collegeStudent
  // CollegeStudent student1 = CollegeStudent("Alice", "CS101", 20);
  // student1.displayStudent();

  // Named constructor use kora
  CollegeStudent student2 = CollegeStudent.named("Bob", "CS102", 22);
  student2.displayStudent();
}
