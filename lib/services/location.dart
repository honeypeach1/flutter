//현재 위치를 가져와서 반환하는 기능
import 'package:geolocator/geolocator.dart';

class LocationService {
  double longitude;
  double latitude;

  Future getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );

    latitude = position.latitude;
    longitude = position.longitude;
  }
}
