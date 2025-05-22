//Observer Pattern

// Observer interface
abstract class Observer {
  void update(String message);
}

// Subject class
class Subject {
  final List<Observer> _observers = [];

  void attach(Observer observer) {
    _observers.add(observer);
  }

  void detach(Observer observer) {
    _observers.remove(observer);
  }

  void notify(String message) {
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}

// Concrete Observer A
class ConcreteObserverA implements Observer {
  @override
  void update(String message) {
    print('ConcreteObserverA received: $message');
  }
}

// Concrete Observer B
class ConcreteObserverB implements Observer {
  @override
  void update(String message) {
    print('ConcreteObserverB received: $message');
  }
}

void main() {
  final subject = Subject();

  final observerA = ConcreteObserverA();
  final observerB = ConcreteObserverB();

  subject.attach(observerA);
  subject.attach(observerB);

  subject.notify("Hello Observers!");

  subject.detach(observerA);

  subject.notify("Only B should see this.");
}
