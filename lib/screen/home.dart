import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:to_do/models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (context, index){
          final user = users[index];
          final email = user.email;
          final color = user.gender == 'male' ? Colors.blue.shade100 : Colors.pink.shade100;
         // final total = user.total;


        return ListTile(
          //leading: CircleAvatar(child: Text('${index + 1}')),
         // leading: ClipRRect(
         //   borderRadius: BorderRadius.circular(100),
         //   child: Image.network(imageUrl),
         // ),
           title: Text(email),
           tileColor: color,
          // subtitle: Text(user.total.toString()),
           //subtitle: Text(name.toString()),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.picture),
          ),
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
  const url = 'https://randomuser.me/api/?results=50';
  final uri = Uri.parse(url);
  final response = await http.get(uri);
  final body = response.body;
  final json = jsonDecode(body);
  final results = json['results'] as List<dynamic>;
  final transform = results.map((e) {
    
    final name = UserName(
       last: e['user']['title'],
        title: e['user']['first'],
        first: e['user']['last'],

    );
    return User(
      cell: e['cell'],
      email: e['email'],
      phone: e['phone'],
      gender: e['gender'],
      nat: e['nat'],
      picture: e['picture']['large'],
      name: name,

    );
  }).toList();
  setState(() {
    users = transform;
  });
  print('fetch user completed');
}

}