import 'package:json_annotation/json_annotation.dart';
import 'package:test_task/test_task_app.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
class UserModel {
  const UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  final int id;
  final String name;
  @JsonKey(name: 'username')
  final String userName;
  final String email;
  final AddressModel address;
  final String phone;
  final String website;
  final CompanyModel company;
}
