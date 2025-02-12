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

class UserName {

  final String title;
  final String first;
  final String last;

  UserName({
    required this.title,
    required this.first,
    required this.last,
});
}