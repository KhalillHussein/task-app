part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class FetchTodos extends TodosEvent {
  const FetchTodos();
}
