import 'package:flutter/material.dart';

class Getapi extends StatefulWidget {
  const Getapi({super.key});

  @override
  State<Getapi> createState() => _GetapiState();
}

class _GetapiState extends State<Getapi> {

  Future<void> fetchUsers() async
  {
    final url = Uri.parse("https: // jsonplaceholder.typeicode.com/posts");
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
