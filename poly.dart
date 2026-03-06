class Animal {
  void eat() {
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override // If you don’t write @override, the program still runs. But, it is a good practice to write @override.
  void eat() {
    print("Dog is eating");
  }
}

void simplePolymorphism() {
  Animal myAni = Animal();
  myAni.eat(); // Output: Animal is eating

  Dog myDog = Dog();
  myDog.eat(); // Output: Dog is eating
}

void main() {
  simplePolymorphism();
}
