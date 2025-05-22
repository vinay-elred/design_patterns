import 'package:design_pattern/src/observer/observer_pattern.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'observer_pattern_test.mocks.dart';

@GenerateMocks([Observer])
void main() {
  test("Test observer Call", () {
    final subject = Subject();
    final MockObserver mockObserver = MockObserver();

    subject.attach(mockObserver);
    subject.notify("Hello Observers!");
    subject.detach(mockObserver);

    verify(mockObserver.update(any)).called(1);
    verifyNoMoreInteractions(mockObserver);
  });
}
