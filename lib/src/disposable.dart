import 'package:meta/meta.dart';

/// An abstract class that provides a contract for disposing resources.
///
/// Classes that implement `Disposable` should override the `dispose` method
/// to release or cleanup resources such as file handles, database connections,
/// subscriptions, etc. This is crucial for preventing resource leaks in
/// applications.
abstract class Disposable {
  /// Releases or cleans up resources used by the object.
  @mustCallSuper
  void dispose();
}

/// A mixin that provides a base implementation of the `Disposable` contract.
///
/// This mixin implements the `Disposable` interface, requiring classes that
/// mixin `DisposableMixin` to provide their own implementations of the `dispose`
/// method. It is useful for sharing common disposal logic among multiple classes
/// without requiring inheritance from a common base class.
mixin DisposableMixin implements Disposable {
  @override
  @mustCallSuper
  void dispose();
}
