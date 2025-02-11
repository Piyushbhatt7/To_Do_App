import 'package:flutter/material.dart';
import 'package:to_do/Practice%20APIs/postapi.dart';
import 'package:to_do/screen/home.dart';

import 'Practice APIs/getapi.dart';

void main()
{
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Postapi(),
    );

  }
}