import 'package:flutter/material.dart';
import 'package:to_do/Practice%20APIs/postapi.dart';
import 'package:to_do/Practice%20APIs/putapi.dart';
import 'package:to_do/screen/home.dart';
import 'package:to_do/todo_list.dart';

import 'Practice APIs/getapi.dart';

void main()
{
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: TodoList(),
    );

  }
}