import 'package:to_do/models/user_dob.dart';
import 'package:to_do/models/user_location.dart';
import 'package:to_do/models/user_name.dart';

class User {

   final String gender;
   final String email;
   final String phone;
   final String cell;
   final String nat;
  // final String total;
   final String picture;
   final UserName name;
   final UserDob dob;
   final UserLocation location;
   User ({

     required this.gender,
     required this.email,
     required this.phone,
     required this.cell,
     required this.nat,
     required this.name,
   //  required this.total
     required this.picture,
     required this.dob,
     required this.location,
});

   factory User.fromMap(Map<String, dynamic> json)
   {

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


   String get fullName {

     return '${name.title} ${name.first} ${name.last}';
   }

}

