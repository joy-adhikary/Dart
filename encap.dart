// Encapsulation means hiding data within a library

class PrivateStudent {
  String? name;

  // Declaring the class properties as private by using underscore(_).
  int? _age;
  String? _depart;

  void showInfo() {
    print('Name: $name, Age: $_age, Department: $_depart');
  }

  void setter(String name, int age, String depart) {
    this.name = name;
    this._age = age;
    this._depart = depart;
  }

  void setName(String name) {
    this.name = name;
  }

  void setAge(int age) {
    this._age = age;
  }

  void setDepart(String depart) {
    this._depart = depart;
  }

  void getter() {
    print('Name: $name, Age: $_age, Department: $_depart');
  }
}

void seetterExample() {
  PrivateStudent student2 = PrivateStudent();
  PrivateStudent student3 = PrivateStudent();

  student2.setter('Bob', 22, 'Mathematics');
  student2.getter();

  student3.setName('Alice');
  student3.setAge(20);
  student3.setDepart('Computer Science');
  student3.showInfo();
}



// In dart using underscore (_) before a variable or method name makes it library private not class private. 
// It means that the variable or method is only visible to the library in which it is declared. 
// It is not visible to any other library. In simple words, library is one file. If you write the main method in a separate file, this will not work.