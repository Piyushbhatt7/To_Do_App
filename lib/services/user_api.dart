import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:to_do/models/user_dob.dart';

import '../models/user.dart';
import '../models/user_name.dart';

class UserApi {


  static Future<List<User>> fetchUsers() async
  {
   // print('Fetchusers called');
    const url = 'https://randomuser.me/api/?results=50';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final user = results.map((e) {

      final name = UserName(
        last: e['name']['title'],
        title: e['name']['first'],
        first: e['name']['last'],

      );
      final date = e['dob']['date'];
      final dob = UserDob(
          age: e['dob']['age'],
          date: DateTime.parse(date),
      );
      return User(
        cell: e['cell'],
        email: e['email'],
        phone: e['phone'],
        gender: e['gender'],
        nat: e['nat'],
        picture: e['picture']['large'],
        name: name,
        dob: dob

      );
    }).toList();

    //  users = transform;
    return user;


  }

}
