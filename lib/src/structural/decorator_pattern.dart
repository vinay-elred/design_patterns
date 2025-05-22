//Decorator Pattern

abstract class Coffee {
  String desc();
  double cost();
}

class SimpleCoffee implements Coffee {
  @override
  double cost() => 5.0;

  @override
  String desc() => "Black Coffee";
}

abstract class CoffeeDecorator implements Coffee {
  final Coffee coffee;
  const CoffeeDecorator(this.coffee);
}

class CoffeeWithMilk extends CoffeeDecorator {
  CoffeeWithMilk(super.coffee);

  @override
  double cost() => 10.0 + coffee.cost();

  @override
  String desc() => "${coffee.desc()} with Milk added";
}

class CoffeeWithSugar extends CoffeeDecorator {
  CoffeeWithSugar(super.coffee);

  @override
  double cost() => 2.5 + coffee.cost();

  @override
  String desc() => "${coffee.desc()}, Sugar added";
}
