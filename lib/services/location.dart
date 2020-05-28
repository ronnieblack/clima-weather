import 'package:geolocator/geolocator.dart';

//extracted from loading screen
//creating a new class
class Location {
  double latitude; //property
  double longitude; //property
  //created method by copying
  Future<void> getCurrentLocation() async {
    //set as Future because it is being returned and waited on
    //have to add async
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
