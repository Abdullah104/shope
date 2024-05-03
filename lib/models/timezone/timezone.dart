import 'package:json_annotation/json_annotation.dart';

part 'timezone.g.dart';

@JsonSerializable()
class Timezone {
  final String offset;
  final String description;

  const Timezone(this.offset, this.description);

  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}
