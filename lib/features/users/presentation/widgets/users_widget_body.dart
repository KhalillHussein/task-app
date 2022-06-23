import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/test_task_app.dart';

class UsersWidgetBody extends StatelessWidget {
  const UsersWidgetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        if (state is UsersLoaded) {
          return Scrollbar(
            child: ListView.builder(
              key: PageStorageKey(AppLocalization.textUsers),
              itemCount: state.users.length,
              itemBuilder: (ctx, index) => UserItemWidget(
                user: state.users[index],
              ),
            ),
          );
        } else if (state is UsersFailure) {
          return ErrorHandler(
            errorMessage: state.message,
          );
        }
        return LoadingHandler();
      },
    );
  }
}
