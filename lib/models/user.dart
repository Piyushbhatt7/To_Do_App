import 'package:to_do/models/user_dob.dart';
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
   final UserDob date;
   User ({

     required this.gender,
     required this.email,
     required this.phone,
     required this.cell,
     required this.nat,
     required this.name,
   //  required this.total
     required this.picture,
     required this.date, required UserDob dob,
});

   String get fullName {

     return '${name.title} ${name.first} ${name.last}';
   }

}

