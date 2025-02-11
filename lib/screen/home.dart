import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (context, index){
          final user = users[index];
          final email = user['email'];

        return ListTile(
           title: Text(email),
        );
      },),

        appBar: AppBar(
          title: Text("REST APIs call"),
        ),
      floatingActionButton:
      FloatingActionButton(onPressed:
          fetchUsers,
          ),

    );
  }



void fetchUsers() async
{
  print('Fetchusers called');
  const url = 'https://randomuser.me/api/?results=5';
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body);
  setState(() {
    users = json['results'];
  });
  print('fetch user completed');
}

}