import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart'; //import geolocator
import 'package:clima/services/weather.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

//begin state object

class _LoadingScreenState extends State<LoadingScreen> {
  //inside our state class

  @override
  void initState() {
    super.initState();
    getLocationData(); //get location when app starts
  }

  void getLocationData() async {
    //edit get location method
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(weatherData);
    }));
  }

  // moved to seperate location.dary file
//  void getLocation() async {
//    //async and await background processing information
//    // new method to get location in the loading screen
//    try {
//      //try catch block to handle errors ; ?? null operator ; throw keyword triggers exception
//      Position position =
//          await Geolocator() //data type "position" called position ; geolocation object
//              .getCurrentPosition(
//                  desiredAccuracy: LocationAccuracy
//                      .low); //get current position is a method in geolocator
//      print(position);
//    } catch (e) {
//      print(e);
//    }
//  }
//
  @override
  Widget build(BuildContext context) {
    //builds widgets on screen
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // getLocation(); Get the current location by calling the get location method
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
