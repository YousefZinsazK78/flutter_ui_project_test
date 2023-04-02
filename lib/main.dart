import 'package:flutter/material.dart';
import 'package:flutter_ui_apps/screen/movie_app_ui/movie_main_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ui demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MovieMainApp(),
    );
  }
}
