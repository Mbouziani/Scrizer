import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../errors/failure.dart';

/// A contract for asynchronous use cases that return a [Future]
/// wrapping an [Either] containing either a [Failure] or a [Type].
///
/// [Type] is the type of data to return on success.
/// [Params] is the type of input required for execution.
abstract class AsyncUseCase<Type, Params> {
  /// Executes the use case with the provided [params].
  Future<Either<Failure, Type>> call(Params params);
}

/// A contract for stream-based use cases that return a [Stream]
/// wrapping an [Either] containing either a [Failure] or a [Type].
///
/// Useful for continuous or observable flows of data.
abstract class StreamUseCase<Type, Params> {
  /// Executes the use case with the provided [params] and returns a stream.
  Stream<Either<Failure, Type>> call(Params params);
}

/// A contract for synchronous use cases that return an [Either]
/// containing either a [Failure] or a [Type].
///
/// Use this for logic that doesn't require async/await.
abstract class UseCase<Type, Params> {
  /// Executes the use case with the provided [params].
  Either<Failure, Type> call(Params params);
}

/// Represents a placeholder for use cases that do not require any parameters.
///
/// Can be used in conjunction with [AsyncUseCase], [UseCase], or [StreamUseCase]
/// when no input is necessary for the operation.
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
