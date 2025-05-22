import 'package:design_pattern/src/creational/builder_pattern.dart';
import 'package:test/test.dart';

void main() {
  group("Builder Pattern - Pizza", () {
    test("Pizza builder with topping and size", () {
      final expected = Pizza(
        toppings: ["cheese", "onion", "olives"],
        size: PizzaSize.medium,
      );

      final pizza =
          PizzaBuilder()
              .addTopping("onion")
              .addTopping("olives")
              .pizzaSize(PizzaSize.medium)
              .bake();

      expect(pizza.toppings.length, expected.toppings.length);
      expect(pizza.size, expected.size);
    });

    test("Pizza builder with default-tops and size", () {
      final expected = Pizza(
        toppings: ["cheese"], //default
        size: PizzaSize.small,
      );

      final pizza = PizzaBuilder().pizzaSize(PizzaSize.small).bake();

      expect(pizza.toppings.length, expected.toppings.length);
      expect(pizza.size, expected.size);
    });

    test("Pizza builder throw Exception when size not given", () {
      expect(
        () => PizzaBuilder().addTopping("onion").addTopping("olives").bake(),
        throwsA(TypeMatcher<Exception>()),
      );
    });
  });
}
