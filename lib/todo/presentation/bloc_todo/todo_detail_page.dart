import 'package:flutter/material.dart';
import '../../data/model/todo.dart';

class TodoDetailPage extends StatelessWidget {
  final Todo todo;
  const TodoDetailPage({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail View')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(todo.title, style: const TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}