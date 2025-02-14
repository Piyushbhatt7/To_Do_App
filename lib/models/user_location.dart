class UserLocation {

  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimezoneCoordinate timezone;

  UserLocation({

    required this.city,
    required this.state,
    required this.country,
})

}

class LocationStreet{
  final int number;
  final String name;

  LocationStreet({

    required this.number,
    required this.name,
  });
}

class LocationCoordinate {

    final String latitude;
    final String longitude;

  LocationCoordinate({

     required this.latitude,
    required this.longitude,
});
}

class LocationTimezoneCoordinate {

  final String offset;
  final String description;

  LocationTimezoneCoordinate({
    required this.offset,
    required this.description,
});
}

