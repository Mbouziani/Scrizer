/// Represents the different states of data within the BLoC or view layer.
///
/// This enum is useful for managing and reacting to changes in UI state,
/// such as loading indicators, error messages, or successful data rendering.
enum ScrizerDataState {
  /// The initial state before any action has been taken.
  initial,

  /// The state indicating that a loading operation is in progress.
  loading,

  /// The state representing a failure or error in the operation.
  error,

  /// The state indicating the operation was successful and data is available.
  success,
}
