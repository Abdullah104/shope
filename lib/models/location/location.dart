import 'package:json_annotation/json_annotation.dart';

import '../coordinates/coordinates.dart';
import '../timezone/timezone.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final String street;
  final String city;
  final String state;
  final String postcode;
  final Coordinates coordinates;
  final Timezone timezone;

  const Location({
    required this.street,
    required this.city,
    required this.state,
    required this.postcode,
    required this.coordinates,
    required this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
