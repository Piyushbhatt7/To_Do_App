import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:to_do/models/user.dart';
import 'package:to_do/services/user_api.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        itemCount: users.length,
          itemBuilder: (context, index){
          final user = users[index];
          final names = user.name.first;
          final email = user.email;
          final color = user.gender == 'male' ? Colors.blue.shade100 : Colors.pink.shade100;
         // final total = user.total;


        return ListTile(
          //leading: CircleAvatar(child: Text('${index + 1}')),
         // leading: ClipRRect(
         //   borderRadius: BorderRadius.circular(100),
         //   child: Image.network(imageUrl),
         // ),
           title: Text(user.fullName),
           tileColor: color,
          subtitle: Text(user.location.country),
          // subtitle: Text(user.total.toString()),
           //subtitle: Text(name.toString()),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(user.picture),
          ),
        );
      },),

        appBar: AppBar(
          title: const Text("REST APIs call"),
        ),


    );
  }

  Future<void> fetchUsers() async
  {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
  }

