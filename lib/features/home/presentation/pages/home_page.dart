import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/test_task_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<TodosBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<UsersBloc>(),
        ),
      ],
      child: const HomePageScreen(),
    );
  }
}
