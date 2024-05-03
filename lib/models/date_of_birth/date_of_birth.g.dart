// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_of_birth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateOfBirth _$DateOfBirthFromJson(Map<String, dynamic> json) => DateOfBirth(
      json['date'] as String,
      (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$DateOfBirthToJson(DateOfBirth instance) =>
    <String, dynamic>{
      'date': instance.date,
      'age': instance.age,
    };
