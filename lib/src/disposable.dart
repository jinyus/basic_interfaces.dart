/// An abstract class that provides a contract for disposing resources.
///
/// Classes that implement/mixin `Disposable` should override the `dispose` method
/// to release or cleanup resources such as file handles, database connections,
/// subscriptions, etc. This is crucial for preventing resource leaks in
/// applications.
abstract mixin class Disposable {
  /// Releases or cleans up resources used by the object.
  void dispose();
}
