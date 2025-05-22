//Factory Pattern

abstract class Animal {
  void speak();
}

final class Dog implements Animal {
  @override
  void speak() {
    print("Wof!");
  }
}

final class Cat implements Animal {
  @override
  void speak() {
    print("Meww!");
  }
}

class AnimalFactory {
  const AnimalFactory._();

  static Animal fromfactory(String type) {
    if (type == "dog") return Dog();
    if (type == "cat") return Cat();
    throw Exception("Type not matched");
  }
}
