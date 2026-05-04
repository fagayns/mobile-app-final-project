import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_flutter_1/todo/data/todo_repository.dart';
import 'package:lesson_flutter_1/todo/presentation/bloc_todo/todo_bloc.dart';
import 'package:lesson_flutter_1/todo/presentation/bloc_todo/todo_event.dart';
import 'package:lesson_flutter_1/home/presentation/home.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => TodoBloc(TodoRepository())..add(LoadTodos()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.green),
        home: const TodoListPage(),
      ),
    ),
  );
}