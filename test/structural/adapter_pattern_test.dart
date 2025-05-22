import 'package:design_pattern/src/structural/adapter_pattern.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'adapter_pattern_test.mocks.dart';

@GenerateMocks([AnalyticsLogger])
void main() {
  late MockAnalyticsLogger mockAnalyticsLogger;

  setUp(() {
    mockAnalyticsLogger = MockAnalyticsLogger();
  });

  test("Verify Adapter calls Legacy code", () {
    when(mockAnalyticsLogger.logEvent(any)).thenReturn(null);
    final adapter = LoggerAdapter(mockAnalyticsLogger);
    adapter.log("Tap event");
    verify(mockAnalyticsLogger.logEvent(any));
  });
}
