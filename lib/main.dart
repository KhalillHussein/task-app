import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:test_task/test_task_app.dart';

Future<void> main() async {
  initDI();
  await runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(App()),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
