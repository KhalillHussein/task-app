import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_task/test_task_app.dart';

part 'users_datasource.g.dart';

@RestApi()
abstract class UsersRemoteDatasource {
  factory UsersRemoteDatasource(Dio dio) = _UsersRemoteDatasource;

  @GET(EndpointsStrings.users)
  Future<HttpResponse<List<UserModel>>> getUsers();
}
