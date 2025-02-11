import 'dart:convert';

import 'package:flutter/material.dart';

class Postapi extends StatefulWidget {
  const Postapi({super.key});

  @override
  State<Postapi> createState() => _PostapiState();
}

class _PostapiState extends State<Postapi> {

  Future<void> createPost () async
  {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/posts");
  }

  final body = jsonEncode({

  })
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
