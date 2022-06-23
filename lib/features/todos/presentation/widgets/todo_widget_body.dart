import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/test_task_app.dart';

class TodosWidgetBody extends StatelessWidget {
  const TodosWidgetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodosBloc, TodosState>(
      builder: (context, state) {
        if (state is TodosLoaded) {
          return Scrollbar(
            child: ListView.builder(
              key: PageStorageKey(AppLocalization.textTodos),
              itemCount: state.todos.length,
              itemBuilder: (ctx, index) => TodoItemWidget(
                todo: state.todos[index],
              ),
            ),
          );
        } else if (state is TodosFailure) {
          return ErrorHandler(
            errorMessage: state.message,
          );
        }
        return LoadingHandler();
      },
    );
  }
}
