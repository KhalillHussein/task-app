import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message});

  final String message;
}

// General failures
class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);

  @override
  List<Object?> get props => [message];
}
