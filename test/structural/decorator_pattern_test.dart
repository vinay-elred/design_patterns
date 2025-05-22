import 'package:design_pattern/src/structural/decorator_pattern.dart';
import 'package:test/test.dart';

void main() {
  group("Verify Decorator - Coffee", () {
    test("Verify Simple coffee", () {
      final expectedPrice = 5.0;
      final expectedDesc = "Black Coffee";

      final Coffee simple = SimpleCoffee();

      expect(simple.cost(), expectedPrice);
      expect(simple.desc(), expectedDesc);
    });

    test("Verify Milk coffee", () {
      final expectedPrice = 15.0;
      final expectedDesc = "Black Coffee with Milk added";

      final Coffee simple = SimpleCoffee();
      final Coffee milkCoffee = CoffeeWithMilk(simple);

      expect(milkCoffee.cost(), expectedPrice);
      expect(milkCoffee.desc(), expectedDesc);
    });

    test("Verify Sugar Milk coffee", () {
      final expectedPrice = 17.5;
      final expectedDesc = "Black Coffee with Milk added, Sugar added";

      final Coffee simple = SimpleCoffee();
      final Coffee milkCoffee = CoffeeWithMilk(simple);
      final Coffee sugarMilkCoffee = CoffeeWithSugar(milkCoffee);

      expect(sugarMilkCoffee.cost(), expectedPrice);
      expect(sugarMilkCoffee.desc(), expectedDesc);
    });
  });
}
