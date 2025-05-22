import 'package:design_pattern/src/creational/factory_pattern.dart';
import 'package:test/test.dart';

void main() {
  group("Verify factory pattern", () {
    test("Verify Factory return Dog()", () {
      final instance = AnimalFactory.fromfactory("dog");
      expect(instance, isA<Dog>());
    });

    test("Verify Factory return Cat()", () {
      final instance = AnimalFactory.fromfactory("cat");
      expect(instance, isA<Cat>());
    });

    test("Verify Factory throw exception", () {
      expect(
        () => AnimalFactory.fromfactory("bird"),
        throwsA(TypeMatcher<Exception>()),
      );
    });
  });
}
