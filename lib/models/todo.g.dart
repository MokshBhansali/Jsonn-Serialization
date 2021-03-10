// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return Todo(
    json['completed'] as bool,
    json['id'] as int,
    json['title'] as String,
    json['userId'] as int,
  );
}

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'completed': instance.completed,
      'id': instance.id,
      'title': instance.title,
      'userId': instance.userId,
    };
