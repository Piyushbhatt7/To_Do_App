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
   User ({

     required this.gender,
     required this.email,
     required this.phone,
     required this.cell,
     required this.nat,
     required this.name,
   //  required this.total
     required this.picture,
});

}

