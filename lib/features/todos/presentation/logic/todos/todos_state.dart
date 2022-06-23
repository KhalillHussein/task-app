part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object?> get props => [];
}

class TodosLoading extends TodosState {}

class TodosLoaded extends TodosState {
  const TodosLoaded({
    required this.todos,
  });
  final List<Todo> todos;

  @override
  List<Object?> get props => [todos];

  @override
  String toString() => 'TodosLoaded(todos: $todos)';
}

class TodosFailure extends TodosState {
  const TodosFailure({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'TodosFailure(message: $message)';
}
