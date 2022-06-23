import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_task/test_task_app.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc({
    required UsersUsecase usecase,
  })  : _usecase = usecase,
        super(UsersLoading()) {
    on<FetchUsers>(_onFetchUsers);
    loadUsers();
  }

  final UsersUsecase _usecase;

  Future<void> _onFetchUsers(
    FetchUsers event,
    Emitter<UsersState> emit,
  ) async {
    final data = await _usecase.getUsers();
    data.fold((error) {
      emit(UsersFailure(message: error.message));
    }, (users) {
      emit(UsersLoaded(users: users));
    });
  }

  void loadUsers() => add(FetchUsers());
}
