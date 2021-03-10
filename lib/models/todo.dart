import 'package:json_annotation/json_annotation.dart';
part 'todo.g.dart';

@JsonSerializable()
class Todo {
  Todo(this.completed, this.id, this.title, this.userId);
  bool completed;
  int id;
  String title;
  int userId;
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
