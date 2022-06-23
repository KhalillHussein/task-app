// ignore_for_file: prefer_constructors_over_static_methods

import 'package:equatable/equatable.dart';
import 'package:test_task/test_task_app.dart';

class User extends Equatable {
  const User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  final int id;
  final String name;
  final String userName;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  @override
  List<Object> get props {
    return [
      id,
      name,
      userName,
      email,
      address,
      phone,
      website,
      company,
    ];
  }

  String get shortName =>
      '${name.split(' ').first[0]}${name.split(' ').last[0]}';

  static User fromModel(UserModel userModel) {
    return User(
      id: userModel.id,
      name: userModel.name,
      userName: userModel.userName,
      email: userModel.email,
      address: Address.fromModel(userModel.address),
      phone: userModel.phone,
      website: userModel.website,
      company: Company.fromModel(userModel.company),
    );
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
