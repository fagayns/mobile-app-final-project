import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../todo/presentation/bloc_todo/todo_bloc.dart';
import '../../todo/presentation/bloc_todo/todo_state.dart';
import '../../todo/presentation/bloc_todo/todo_detail_page.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products List (Master)')),
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (context, state) {
          if (state is TodoLoading) return const Center(child: CircularProgressIndicator());
          if (state is TodoLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                final item = state.todos[index];
                return ListTile(
                  title: Text(item.title),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => TodoDetailPage(todo: item)),
                  ),
                );
              },
            );
          }
          return const Center(child: Text('Error loading data'));
        },
      ),
    );
  }
}