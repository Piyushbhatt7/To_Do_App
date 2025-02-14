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

  final int number;
  final String name;

  LocationCoordinate({

    required
})
}

class LocationTimezoneCoordinate {}

class LocationStreet{}