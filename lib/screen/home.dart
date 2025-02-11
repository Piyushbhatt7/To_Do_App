import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("REST APIs call"),
        ),
      floatingActionButton:
      FloatingActionButton(onPressed:
          fetchUsers,
          ),
    );
  }

}

void fetchUsers()
{
  print('Fetchusers called');
}
