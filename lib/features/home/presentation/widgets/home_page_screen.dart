import 'package:flutter/material.dart';
import 'package:test_task/test_task_app.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            AppLocalization.textTestTaskApp,
            style: _theme.textTheme.titleLarge,
          ),
          elevation: 1,
          centerTitle: true,
          bottom: TabBar(
            labelColor: _theme.textTheme.titleMedium!.color,
            labelStyle: _theme.textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: _theme.textTheme.titleMedium,
            tabs: const [
              Tab(text: AppLocalization.textUsers),
              Tab(text: AppLocalization.textTodos),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            UsersWidget(),
            TodosWidget(),
          ],
        ),
      ),
    );
  }
}
