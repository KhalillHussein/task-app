import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_task/test_task_app.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc({
    required TodosUsecase usecase,
  })  : _usecase = usecase,
        super(TodosLoading()) {
    on<FetchTodos>(_onFetchTodos);
    loadTodos();
  }

  final TodosUsecase _usecase;

  Future<void> _onFetchTodos(
    FetchTodos event,
    Emitter<TodosState> emit,
  ) async {
    final data = await _usecase.getTodos();
    data.fold((error) {
      emit(TodosFailure(message: error.message));
    }, (todos) {
      emit(TodosLoaded(todos: todos));
    });
  }

  void loadTodos() => add(FetchTodos());
}
