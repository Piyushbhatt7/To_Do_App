class User {

   final String gender;
   final String email;
   final String phone;
   final String cell;
   final String nat;

   User ({

     required this.gender,
     required this.email,
     required this.phone,
     required this.cell,
     required this.nat,
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