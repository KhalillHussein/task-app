import 'package:flutter/material.dart';

class ErrorHandler extends StatelessWidget {
  const ErrorHandler({Key? key, required this.errorMessage}) : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error,
            color: _theme.colorScheme.secondary,
            size: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            child: Text(
              errorMessage,
              style: _theme.textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
