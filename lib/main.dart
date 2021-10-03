import 'package:flutter/material.dart';
import 'package:task_manager_app/navigation.dart';
import 'package:task_manager_app/view/login_screen.dart';
import 'view/top_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Navigation(),
      home: LoginScreen(),
    );
  }
}
