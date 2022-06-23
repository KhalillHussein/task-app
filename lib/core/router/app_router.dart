import 'package:flutter/material.dart';
import 'package:test_task/test_task_app.dart';

class AppRouter {
  const AppRouter._();

  static const String home = '/';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) => HomePage(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
