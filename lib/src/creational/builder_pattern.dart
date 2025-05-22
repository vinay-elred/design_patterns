// ignore_for_file: public_member_api_docs, sort_constructors_first
//Builder Pattern

//Define class for final object
class Pizza {
  final List<String> toppings;
  final PizzaSize size;
  const Pizza({required this.toppings, required this.size});

  @override
  String toString() => 'Pizza(toppings: ${toppings.join(",")}, size: $size)';
}

enum PizzaSize { small, medium, large }

//Define Builder
class PizzaBuilder {
  final List<String> _toppings = ["cheese"];
  PizzaSize? _size;

  PizzaBuilder addTopping(String topping) {
    _toppings.add(topping);
    return this;
  }

  PizzaBuilder pizzaSize(PizzaSize size) {
    _size = size;
    return this;
  }

  Pizza bake() {
    if (_toppings.isEmpty) throw Exception("Toppings can't be empty");
    if (_size == null) throw Exception("Pizza size is required");
    return Pizza(toppings: _toppings, size: _size!);
  }
}
