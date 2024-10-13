import 'package:geolocator/geolocator.dart';

abstract class GeolocatorInfo {
  Future<Position> getCurrentLocation();
}

class GeolocatorInfoImpl extends GeolocatorInfo {
  @override
  Future<Position> getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      print(serviceEnabled);
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      LocationPermission permission = await Geolocator.checkPermission();
      print(permission);
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error(
            'Location permission denied forever. Please enable it in settings.');
      }
      print(await Geolocator.getCurrentPosition());
      return await Geolocator.getCurrentPosition();
    } catch (e) {
      return Future.error('Failed to get current location: $e');
    }
  }
}
