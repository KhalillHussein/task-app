import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_task/test_task_app.dart';

final sl = GetIt.instance;

void initDI() {
  _initExternalDependencies();
  _initDataSourcesDependencies();
  _initRepositoryDependencies();
  _initUseCaseDependencies();
  _initBlocDependencies();
}

void _initExternalDependencies() {
  sl.registerLazySingleton<Dio>(() => DioClient(dio: Dio()).client);
}

void _initDataSourcesDependencies() {
  sl.registerLazySingleton<UsersRemoteDatasource>(
    () => UsersRemoteDatasource(sl()),
  );
  sl.registerLazySingleton<TodosRemoteDatasource>(
    () => TodosRemoteDatasource(sl()),
  );
}

void _initRepositoryDependencies() {
  sl.registerLazySingleton<UsersRepository>(
    () => UsersRepositoryImpl(remoteDataSource: sl()),
  );
  sl.registerLazySingleton<TodosRepository>(
    () => TodosRepositoryImpl(remoteDataSource: sl()),
  );
}

void _initUseCaseDependencies() {
  sl.registerLazySingleton<UsersUsecase>(
    () => UsersUsecase(repository: sl()),
  );
  sl.registerLazySingleton<TodosUsecase>(
    () => TodosUsecase(repository: sl()),
  );
}

void _initBlocDependencies() {
  sl.registerFactory<UsersBloc>(
    () => UsersBloc(usecase: sl()),
  );
  sl.registerFactory<TodosBloc>(
    () => TodosBloc(usecase: sl()),
  );
}
