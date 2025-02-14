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
      final coordinates = LocationCoordinate(
          latitude: e['location']['coordinates']['latitude'],
          longitude: e['location']['coordinates']['longitude']
      );
      final street = LocationStreet(
          number: e['location']['street']['number'],
          name:  e['location']['street']['name']
      );
      final timezone = LocationTimezone(
          offset:  e['location']['timezone']['offset'],
          description: e['location']['timezone'] ['description']
      );
      final location = UserLocation(
          city: e['location']['city'],
          state: e['location']['state'],
          country: e['location']['country'],
          postcode: e['location']['postcode'].toString(),
          street: street,
          coordinates: coordinates,
          timezone: timezone,
      );
      return User(
        cell: e['cell'],
        email: e['email'],
        phone: e['phone'],
        gender: e['gender'],
        nat: e['nat'],
        picture: e['picture']['large'],
        name: name,
        dob: dob,
        location: location

      );
    }).toList();

    //  users = transform;
    return user;


  }

}
