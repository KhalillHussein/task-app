// ignore_for_file: prefer_constructors_over_static_methods

import 'package:equatable/equatable.dart';
import 'package:test_task/test_task_app.dart';

class Address extends Equatable {
  const Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  @override
  List<Object> get props {
    return [
      street,
      suite,
      city,
      zipcode,
      geo,
    ];
  }

  static Address fromModel(AddressModel addressModel) {
    return Address(
      street: addressModel.street,
      suite: addressModel.suite,
      city: addressModel.city,
      zipcode: addressModel.zipcode,
      geo: Geo.fromModel(addressModel.geo),
    );
  }

  @override
  String toString() {
    return 'Address(street: $street, suite: $suite, city: $city, zipcode: $zipcode, geo: $geo)';
  }
}
