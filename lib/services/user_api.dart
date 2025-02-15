import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:to_do/models/user_dob.dart';
import 'package:to_do/models/user_location.dart';

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

    }
}
