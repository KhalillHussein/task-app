part of 'users_bloc.dart';

abstract class UsersState extends Equatable {
  const UsersState();

  @override
  List<Object?> get props => [];
}

class UsersLoading extends UsersState {}

class UsersLoaded extends UsersState {
  const UsersLoaded({
    required this.users,
  });
  final List<User> users;

  @override
  List<Object?> get props => [users];

  @override
  String toString() => 'UsersLoaded(users: $users)';
}

class UsersFailure extends UsersState {
  const UsersFailure({required this.message});

  final String message;

  @override
  List<Object?> get props => [message];

  @override
  String toString() => 'UsersFailure(message: $message)';
}
