import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Getapi extends StatefulWidget {
  const Getapi({super.key});

  @override
  State<Getapi> createState() => _GetapiState();
}

class _GetapiState extends State<Getapi> {

  List posts = [];

  Future<void> fetchUsers() async
  {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
      }
      else {
        print("Error: ${response.statusCode}");
      }
    }
    catch (e) {
      print("Exception :  $e");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: posts.isEmpty
          ? const Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index)
          {
            return ListTile(
              title: Text(posts[index]['title']),
              subtitle: Text(posts [index]['body']),
            );
          }

    )
    );
  }


  void main() {
    fetchUsers();
  }
}