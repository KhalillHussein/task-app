import 'package:dartz/dartz.dart';
import 'package:test_task/test_task_app.dart';

class TodosUsecase {
  const TodosUsecase({
    required TodosRepository repository,
  }) : _repository = repository;

  final TodosRepository _repository;

  Future<Either<Failure, List<Todo>>> getTodos() => _repository.getTodos();
}
