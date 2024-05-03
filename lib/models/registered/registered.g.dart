// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registered.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Registered _$RegisteredFromJson(Map<String, dynamic> json) => Registered(
      json['date'] as String,
      (json['age'] as num).toInt(),
    );

Map<String, dynamic> _$RegisteredToJson(Registered instance) =>
    <String, dynamic>{
      'date': instance.date,
      'age': instance.age,
    };
