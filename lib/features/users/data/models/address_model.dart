import 'package:json_annotation/json_annotation.dart';

import 'package:test_task/test_task_app.dart';
part 'address_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AddressModel {
  const AddressModel({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddressModelToJson(this);

  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoModel geo;
}
