# Basic Interfaces

A tiny collection of basic interfaces. This package is intended to foster collaboration and code reuse among Dart developers.

## Installation 💻

```sh
dart pub add basic_interfaces
```

## Interfaces 📚

### `Disposable`

An abstract class that provides a contract for disposing resources.

Classes that implement `Disposable` should override the `dispose` method
to release or cleanup resources such as file handles, database connections,
subscriptions, etc. This is crucial for preventing resource leaks in
applications.

```dart
class MyClass extends Disposable {
  @override
  void dispose() {
    // Release resources here
  }
}
```

### `DisposableMixin`

A mixin that provides a base implementation of the `Disposable` contract.

This mixin implements the `Disposable` interface, requiring classes that
mixin `DisposableMixin` to provide their own implementations of the `dispose`
method. It is useful for sharing common disposal logic among multiple classes
without requiring inheritance from a common base class.

```dart
class MyClass with DisposableMixin {
  @override
  void dispose() {
    // Release resources here
  }
}
```
