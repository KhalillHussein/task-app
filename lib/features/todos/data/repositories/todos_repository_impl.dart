import 'package:dartz/dartz.dart';
import 'package:test_task/test_task_app.dart';

class TodosRepositoryImpl extends TodosRepository with BaseRepository {
  TodosRepositoryImpl({
    required TodosRemoteDatasource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final TodosRemoteDatasource _remoteDataSource;

  @override
  Future<Either<Failure, List<Todo>>> getTodos() async {
    final result = await safeCall(_remoteDataSource.getTodos());
    if (result is DataFailed) {
      return left(result.error!);
    }
    return right(List.from(result.data!.map((e) => Todo.fromModel(e))));
  }
}
