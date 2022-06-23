import 'dart:io';
import 'package:dio/dio.dart';

abstract class RemoteClient<T> {
  T get client;
}

class DioClient implements RemoteClient<Dio> {
  DioClient({required Dio dio}) : _dio = dio {
    _dio.options
      ..headers = _headers
      ..sendTimeout = 10000;
    _dio.interceptors.add(
      LogInterceptor(responseBody: true, requestBody: true),
    );
  }

  @override
  Dio get client => _dio;

  final Dio _dio;

  final Map<String, String> _headers = {
    HttpHeaders.acceptHeader: 'application/json',
    HttpHeaders.contentTypeHeader: 'application/json',
  };
}
