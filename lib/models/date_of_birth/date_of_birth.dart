import 'package:json_annotation/json_annotation.dart';

part 'date_of_birth.g.dart';

@JsonSerializable()
class DateOfBirth {
  final String date;
  final int age;

  const DateOfBirth(this.date, this.age);

  factory DateOfBirth.fromJson(Map<String, dynamic> json) =>
      _$DateOfBirthFromJson(json);

  Map<String, dynamic> toJson() => _$DateOfBirthToJson(this);
}
