import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lesson_flutter_1/todo/data/model/todo.dart'; 

class TodoRepository {
  Future<List<Todo>> fetchTodos() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      List data = json.decode(response.body);
      return data.map((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load todos');
    }
  }
}