import 'dart:io';

import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:test_task/test_task_app.dart';

class BaseRepository {
  Future<DataState<RequestType>> safeCall<RequestType>(
    Future<HttpResponse<RequestType>> call,
  ) async {
    try {
      final httpResponse = await call;
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      }
      return DataFailed(
        ServerFailure(
          message: StringsException.serverFailure,
        ),
      );
    } on DioError catch (e) {
      return DataFailed(
        ServerFailure(
          message: ServerException.fromDioError(e).message,
        ),
      );
    }
  }
}
