import 'package:flutter/material.dart';

class LoadingHandler extends StatelessWidget {
  const LoadingHandler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
