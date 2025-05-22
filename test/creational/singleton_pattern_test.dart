import 'package:design_pattern/src/creational/singleton_pattern.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test("Verify Singleton instance", () {
    final instance1 = Logger();
    final instance2 = Logger();

    expect(instance1, instance2);
  });
}
