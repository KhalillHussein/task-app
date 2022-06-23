import 'package:dartz/dartz.dart';
import 'package:test_task/test_task_app.dart';

class UsersUsecase {
  const UsersUsecase({
    required UsersRepository repository,
  }) : _repository = repository;

  final UsersRepository _repository;

  Future<Either<Failure, List<User>>> getUsers() => _repository.getUsers();
}
