import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/todo.dart';

var todoList = List<Todo>();

getTodo() async {
  String url = "https://jsonplaceholder.typicode.com/todos";
  var responce = await http.get(url);
  var todoMap = await jsonDecode(responce.body);
  for (var item in todoMap) {
    var todo = Todo.fromJson(item);
    todoList.add(todo);
  }
  return todoList;
}
