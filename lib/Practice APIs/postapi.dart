import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Postapi extends StatefulWidget {
  const Postapi({super.key});

  @override
  State<Postapi> createState() => _PostapiState();
}

class _PostapiState extends State<Postapi> {

  Future<void> createPost () async
  {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");


    final body = jsonEncode({

      "title": "Hello pussy",
      "body": "This is for testing purpose",
      "userId": 1
    });

    try {
      final response = await http.post(url,
        headers: {"Content-Type": "application/json"},
        body: body,
      );

      if (response.statusCode == 201) {
        print("Post created: ${response.body}");
      }

      else {
        print("Error: ${response.statusCode}");
      }
    }

    catch (e) {
      print("Exception: $e");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createPost();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Text("Posting Data...")),

    );
  }
}

