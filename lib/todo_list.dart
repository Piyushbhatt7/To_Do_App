import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:to_do/adding_page.dart';
import 'package:http/http.dart' as http;
class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchTodo();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
           title: Text(
              'Todo List'
           ),
         ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: navigateToAddPage,
      label: Text('Add To do list'),
      ),
    );
  }

  void navigateToAddPage()
  {
     final route = MaterialPageRoute(
         builder: (context) => AddingTodoPage());

     Navigator.push(context, route);
  }

  Future<void> fetchTodo() async {

    final url =  'https: //api.nstack.in/v1/todos?page=1&limit=10';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if(response.statusCode == 200){

      final json = jsonDecode(response.body) as Map;
      final result = json['items'] as List;
    }

    else {

    }
    print(response.body);
  }
}
