// ignore_for_file: prefer_constructors_over_static_methods

import 'package:equatable/equatable.dart';
import 'package:test_task/test_task_app.dart';

class Geo extends Equatable {
  const Geo({
    required this.lat,
    required this.lng,
  });

  final String lat;
  final String lng;

  @override
  List<Object> get props => [lat, lng];

  static Geo fromModel(GeoModel geoModel) {
    return Geo(
      lat: geoModel.lat,
      lng: geoModel.lng,
    );
  }

  @override
  String toString() => 'Geo(lat: $lat, lng: $lng)';
}
