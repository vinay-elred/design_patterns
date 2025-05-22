//Singleton Pattern

class Logger {
  //Make the constructor private
  const Logger._();
  // Create a static instance
  static final Logger _instance = Logger._();
  // Use factory or getter for instance
  factory Logger() => _instance;
  // Getter (optional)
  Logger get instance => _instance;
}
