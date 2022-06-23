import 'package:dartz/dartz.dart';
import 'package:test_task/test_task_app.dart';

class UsersRepositoryImpl extends UsersRepository with BaseRepository {
  UsersRepositoryImpl({
    required UsersRemoteDatasource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final UsersRemoteDatasource _remoteDataSource;

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    final result = await safeCall(_remoteDataSource.getUsers());
    if (result is DataFailed) {
      return left(result.error!);
    }
    return right(List.from(result.data!.map((e) => User.fromModel(e))));
  }
}
