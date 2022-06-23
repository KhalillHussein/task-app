import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/test_task_app.dart';

class TodoItemWidget extends StatelessWidget {
  const TodoItemWidget({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        backgroundColor:
            todo.completed ? AppColors.colorBlue : Colors.grey.shade300,
        foregroundColor: Colors.white,
        child: Icon(Icons.check),
      ),
      title: Text(todo.title),
      subtitle: Text(context.select((UsersBloc value) {
        if (value.state is UsersLoaded) {
          return (value.state as UsersLoaded)
              .users
              .firstWhere((user) => user.id == todo.userId)
              .name;
        }
        return '';
      })),
    );
  }
}
