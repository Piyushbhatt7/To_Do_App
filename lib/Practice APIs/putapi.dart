import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Putapi extends StatefulWidget {
  const Putapi({super.key});

  @override
  State<Putapi> createState() => _PutapiState();
}

class _PutapiState extends State<Putapi> {

  String responseMessage = "Updating post...";

  Future<void> updatePost () async {
         final url = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");

         final body = jsonEncode({
           "id": 1,
           "title": "updating pussy to cat",
           "body": "Pussy looks an inappropiate name",
           "userId": 3
         });

         try {

           final response = await http.put(
               url,
           headers: {"Content-Type": "application/json"},
               body : body,
           );

           if(response.statusCode == 200)
             {
               setState(() {
                 responseMessage = "Post updated successfully: \n${response.body}";

               });
             }
         }
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
