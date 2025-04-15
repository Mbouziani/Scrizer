import 'package:equatable/equatable.dart';

/// An abstract base class representing a failure or error state
/// within the application.
///
/// This class is extended to define specific failure types and allows
/// for error messages and a list of error details to be provided.
///
/// It also supports translation or transformation of the message
/// through the [trMessage] method.
abstract class Failure extends Equatable {
  /// A general message describing the failure.
  final String message;

  /// A list of detailed error messages related to the failure.
  final List<String> errors;

  /// Constructs a [Failure] with a required [message] and [errors] list.
  const Failure({required this.message, required this.errors});

  /// Returns a translated or modified version of the current failure.
  Failure trMessage();

  @override
  List<Object> get props => [message, errors];
}

/// A concrete implementation of [Failure] that represents
/// an empty or generic failure state.
///
/// Typically used when no specific failure type is necessary,
/// or when an operation simply failed without additional context.
class EmptyFailure extends Failure {
  /// Constructs an [EmptyFailure] with optional [message] and [errors].
  /// Defaults to an empty string and empty list.
  const EmptyFailure({super.message = "", super.errors = const []});

  @override
  List<Object> get props => [message, errors];

  @override
  String toString() {
    return message;
  }

  /// Returns a copy of this [EmptyFailure], useful for message transformation.
  @override
  EmptyFailure trMessage() {
    return EmptyFailure(message: message, errors: errors);
  }
}
