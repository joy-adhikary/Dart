// super is used to acces the parent class property and method. It is also used to call the parent class constructor

class Person {
  String? name;

  void displayPerson() {
    print('Name: $name');
  }

  void setName(String name) {
    this.name = name;
  }
}

class Engineer extends Person {
  String? type;

  void displayEngineer() {
    print('Type: $type');

    super.setName('Joy'); // calling parent class method using super

    print(
      'Name using super: ${super.name}',
    ); // accessing parent class property using super
    super.displayPerson(); // accessing parent class method using super
  }
}

//                             Named super constructor example
class Employee {
  // Named constructor
  Employee.Pmanager() {
    print("Employee named constructor");
  }
}

class Manager extends Employee {
  // Named constructor
  Manager.manager() : super.Pmanager() {
    print("Manager named constructor");
  }
}

//                              Multilevel super example


class Laptop {
  String? brand;

  // Method
  void setBrand(String brand) {
    this.brand = brand;
  }

  void displayL() {
    print("Laptop display Brand: $brand");
  }
}

class MacBook extends Laptop {
  String? model;

  void setModel(String model) {
    this.model = model;
  }

  // Method
  void displayM() {
    print("MacBook display Model: $model");
  }
}

class MacBookPro extends MacBook {
  String? ram;

  void setRam(String ram) {
    this.ram = ram;
  }

  // Method
  void display() {
    print("MacBookPro display RAM: $ram");
    super.setBrand('Apple');
    super.setModel('MacBook Pro');

    super.displayL(); // calling parent class method using super
    super.displayM(); // calling parent class method using super
  }
}


void main() {
  // Engineer joy = Engineer();
  // joy.type = "Software Engineer";
  // joy.displayEngineer();

  // Manager manager = Manager.manager();

  MacBookPro macBookPro = MacBookPro();
  macBookPro.setRam('16GB');
  macBookPro.display();
}
