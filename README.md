# Basic Interfaces

A tiny collection of basic interfaces. This package is intended to foster collaboration and code reuse among Dart developers.

## Installation 💻

```sh
dart pub add basic_interfaces
```

## Interfaces 📚

### `Disposable`

An abstract mixin class that provides a contract for disposing resources.

Classes that implement/mixin `Disposable` should override the `dispose` method
to release or cleanup resources such as file handles, database connections,
subscriptions, etc. This is crucial for preventing resource leaks in
applications.

```dart
class MyClass implements Disposable {
  @override
  void dispose() {
    // Release resources here
  }
}
```

#### OR

```dart
class MyClass with Disposable {
  @override
  void dispose() {
    // Release resources here
  }
}
```
