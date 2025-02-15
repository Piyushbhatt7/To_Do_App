import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         appBar: AppBar(
           title: Text(
              'Todo List'
           ),
         ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
            
      },
      label: Text('Add To do list'),
      ),
    );
  }
}
