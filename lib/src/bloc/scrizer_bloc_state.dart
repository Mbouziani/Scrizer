import 'package:equatable/equatable.dart';

import '../enums/data_state_enum.dart';
import '../errors/failure.dart';

/// A generic BLoC state class that encapsulates data, its state,
/// and any related failure.
///
/// [ScrizerBlocState] is useful for managing and representing
/// the state of asynchronous operations in Flutter using the BLoC pattern.
///
/// It provides helper getters to simplify state checking, such as
/// [isInitial], [isLoading], [isSuccess], and [hasError].
class ScrizerBlocState<T> extends Equatable {
  /// The data associated with this state, if any.
  final T? data;

  /// The current state of the data (initial, loading, success, error).
  final ScrizerDataState state;

  /// The failure information, if the state is in error.
  final Failure failure;

  /// Creates a [ScrizerBlocState] with optional [data],
  /// a [state] defaulting to [ScrizerDataState.initial],
  /// and an optional [failure] (defaults to [EmptyFailure]).
  const ScrizerBlocState({this.data, this.state = ScrizerDataState.initial, this.failure = const EmptyFailure()});

  /// Factory constructor to create a state with default data.
  factory ScrizerBlocState.withDefault(T defaultData) {
    return ScrizerBlocState<T>(data: defaultData, state: ScrizerDataState.initial, failure: const EmptyFailure());
  }

  /// Indicates whether the state is [ScrizerDataState.initial].
  bool get isInitial => ScrizerDataState.initial == state;

  /// Indicates whether the state is [ScrizerDataState.loading].
  bool get isLoading => ScrizerDataState.loading == state;

  /// Indicates whether the state is [ScrizerDataState.error].
  bool get hasError => ScrizerDataState.error == state;

  /// Indicates whether the state is [ScrizerDataState.success].
  bool get isSuccess => ScrizerDataState.success == state;

  /// Checks if there is valid data and the state is [ScrizerDataState.success].
  bool get hasData => data != null && ScrizerDataState.success == state;

  /// Returns the current data value. Should only be accessed when [hasData] is true.
  T get value => data!;

  /// Creates an initial state with optional [data].
  factory ScrizerBlocState.initial({T? data}) {
    return ScrizerBlocState(data: data, state: ScrizerDataState.initial, failure: EmptyFailure());
  }

  /// Creates an error state with a [failure].
  factory ScrizerBlocState.error(Failure failure) {
    return ScrizerBlocState(data: null, state: ScrizerDataState.error, failure: failure);
  }

  /// Creates a loading state.
  factory ScrizerBlocState.loading() {
    return const ScrizerBlocState(data: null, state: ScrizerDataState.loading, failure: EmptyFailure());
  }

  /// Creates a success state with [data].
  factory ScrizerBlocState.success(T data) {
    return ScrizerBlocState(data: data, state: ScrizerDataState.success, failure: const EmptyFailure());
  }

  @override
  List<Object?> get props => [data, state, failure];
}
