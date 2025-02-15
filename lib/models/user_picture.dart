class UserPicture {

  final String large;
  final String medium;
  final String small;
  UserPicture({

    required this.large,
    required this.medium,
    required this.small
});

  factory UserPicture.fromMap(Map<String, dynamic> json)
  {
    return UserPicture(
      large: ['large'],
        medium: ['medium'],
      small: json['small'],
    )
  }
}