import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:test_task/test_task_app.dart';

part 'todos_datasource.g.dart';

@RestApi()
abstract class TodosRemoteDatasource {
  factory TodosRemoteDatasource(Dio dio) = _TodosRemoteDatasource;

  @GET(EndpointsStrings.todos)
  Future<HttpResponse<List<TodoModel>>> getTodos();
}
