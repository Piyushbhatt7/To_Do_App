import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Getapi extends StatefulWidget {
  const Getapi({super.key});

  @override
  State<Getapi> createState() => _GetapiState();
}

class _GetapiState extends State<Getapi> {

  Future<void> fetchUsers() async
  {
    final url = Uri.parse("https: //jsonplaceholder.typeicode.com/posts");

    try{

      final response = await http.get(url);
      if(response.statusCode == 200)
        {
          List data = jsonDecode(response.body);
        }
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

    );
  }
}
