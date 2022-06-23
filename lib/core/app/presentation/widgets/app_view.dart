import 'package:flutter/material.dart';
import 'package:test_task/test_task_app.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppLocalization.textTestTaskApp,
      theme: ThemeData(
        typography: Typography.material2018(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.colorBlue,
        ),
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
