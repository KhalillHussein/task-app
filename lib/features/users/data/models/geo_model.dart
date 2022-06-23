import 'package:json_annotation/json_annotation.dart';

part 'geo_model.g.dart';

@JsonSerializable()
class GeoModel {
  const GeoModel({
    required this.lat,
    required this.lng,
  });

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeoModelToJson(this);

  final String lat;
  final String lng;
}
