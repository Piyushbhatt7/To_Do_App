class UserLocation {

  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCoordinate coordinates;
  final LocationTimezoneCoordinate timezone;

}

class LocationCoordinate {

    final String latitude;
    final String longitude;

  LocationCoordinate({


});
}

class LocationTimezoneCoordinate {}

class LocationStreet{
  final int number;
  final String name;

  LocationStreet({

    required this.number,
    required this.name,
});
}