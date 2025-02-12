import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Postapi extends StatefulWidget {
  const Postapi({super.key});

  @override
  State<Postapi> createState() => _PostapiState();
}

class _PostapiState extends State<Postapi> {

  String responseMessage = "Sending Data...";


  Future<void> createPost () async
  {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");


    final body = jsonEncode({

      "title": "Hello Pussy Post",
      "body": "This is for testing purpose",
      "userId": 1
    });

    try {
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: body,
      );

      if (response.statusCode == 201) {

        setState(() {
          responseMessage = "Post created sucessfully: \n${response.body}";
        });

      }

      else {

        setState(() {
          responseMessage = "Error: ${response.statusCode}";
        });

      }
    }

    catch (e) {
      setState(() {
        responseMessage = "Exception $e";
      });

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

      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
          child: Text(
              responseMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold
            ),
          ),
        ),
      )
    );
  }
}



