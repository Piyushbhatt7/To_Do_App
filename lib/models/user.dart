class User {

   final String gender;
   final String email;
   final String phone;
   final String cell;
   final String nat;
   final String total;

   User ({

     required this.gender,
     required this.email,
     required this.phone,
     required this.cell,
     required this.nat,
     required this.total
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