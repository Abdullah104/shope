import 'package:json_annotation/json_annotation.dart';

import '../date_of_birth/date_of_birth.dart';
import '../id/id.dart';
import '../location/location.dart';
import '../login/login.dart';
import '../name/name.dart';
import '../picture/picture.dart';
import '../registered/registered.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String gender;
  final Name name;
  final Location location;
  final String email;
  final Login login;
  final DateOfBirth dob;
  final Registered registered;
  final String phone;
  final String cell;
  final Id id;
  final Picture picture;
  final String nat;

  const User({
    required this.gender,
    required this.name,
    required this.location,
    required this.email,
    required this.login,
    required this.dob,
    required this.registered,
    required this.phone,
    required this.cell,
    required this.id,
    required this.picture,
    required this.nat,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
