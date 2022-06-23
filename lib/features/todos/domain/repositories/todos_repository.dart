// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:test_task/test_task_app.dart';

abstract class TodosRepository {
  Future<Either<Failure, List<Todo>>> getTodos();
}
