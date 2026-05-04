import 'dart:js';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:lesson_flutter_1/home/presentation/home.dart';
import 'package:lesson_flutter_1/todo/presentation/bloc_todo/todo_bloc.dart';
import 'package:lesson_flutter_1/user/presentation/bloc/profile_bloc.dart';
import 'package:lesson_flutter_1/user/presentation/login.dart';
import 'package:lesson_flutter_1/user/presentation/profile.dart';

void main() => runApp(MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProfileBloc()),
        BlocProvider(create: (context) => TodoBloc())
      ],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      // A widget which will be started on application startup
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => Login(),
        "/profile": (context) => Profile()
      },
    );
  }
}
