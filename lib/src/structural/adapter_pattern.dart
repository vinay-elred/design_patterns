//Adapter Pattern

//Target
abstract class Logger {
  void log(String msg);
}

//Adaptee
class AnalyticsLogger {
  void logEvent(String info) => print(info);
}

//Adapter
class LoggerAdapter implements Logger {
  final AnalyticsLogger analyticsLogger;
  const LoggerAdapter(this.analyticsLogger);

  @override
  void log(String msg) {
    analyticsLogger.logEvent(msg);
  }
}
