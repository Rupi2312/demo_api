
import 'package:geolocator/geolocator.dart';

class Location{

  late double latitude;
  late double longitude;

  Future<void> getLocation() async {

    try {
      LocationPermission permission;
      permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude=position.latitude;
      longitude=position.longitude;

    }
    catch(e){
      print("Location denied!");
    }


  }


}