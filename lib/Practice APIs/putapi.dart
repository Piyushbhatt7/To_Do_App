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
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
