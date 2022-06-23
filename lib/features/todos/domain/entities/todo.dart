// ignore_for_file: prefer_constructors_over_static_methods

import 'package:equatable/equatable.dart';

import 'package:test_task/test_task_app.dart';

class Todo extends Equatable {
  const Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  List<Object> get props {
    return [
      userId,
      id,
      title,
      completed,
    ];
  }

  static Todo fromModel(TodoModel todoModel) {
    return Todo(
      userId: todoModel.userId,
      id: todoModel.id,
      title: todoModel.title,
      completed: todoModel.completed,
    );
  }

  @override
  String toString() => 'Todo(userId: $userId, id: $id, completed: $completed)';
}
