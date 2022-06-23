// ignore_for_file: prefer_constructors_over_static_methods

import 'package:equatable/equatable.dart';
import 'package:test_task/test_task_app.dart';

class Company extends Equatable {
  const Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  final String name;
  final String catchPhrase;
  final String bs;

  @override
  List<Object> get props => [name, catchPhrase, bs];

  static Company fromModel(CompanyModel companyModel) {
    return Company(
      name: companyModel.name,
      catchPhrase: companyModel.catchPhrase,
      bs: companyModel.bs,
    );
  }

  @override
  String toString() =>
      'Company(name: $name, catchPhrase: $catchPhrase, bs: $bs)';
}
