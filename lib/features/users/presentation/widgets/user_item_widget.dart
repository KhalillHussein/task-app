import 'package:flutter/material.dart';
import 'package:test_task/test_task_app.dart';

class UserItemWidget extends StatelessWidget {
  const UserItemWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: Text(user.shortName),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
    );
  }
}
