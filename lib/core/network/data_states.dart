import 'package:equatable/equatable.dart';
import 'package:test_task/test_task_app.dart';

abstract class DataState<T> extends Equatable {
  const DataState({this.data, this.error});

  final T? data;
  final Failure? error;

  @override
  List<Object?> get props => [data, error];
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(Failure error) : super(error: error);
}
