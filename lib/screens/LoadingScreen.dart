

import 'package:demo_api/screens/HomePage.dart';
import 'package:demo_api/services/location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../services/weather.dart';
String today_date = "17, Aug";
String today_day ="Thursday";

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();

  }





  Future<void> getLocation() async {


    WeatherModel weatherModel = WeatherModel();

    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push( context,MaterialPageRoute(builder: (context)=> HomePage(weatherData: weatherData)) ) ;



}




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.black,
            size: 100.0,

          ),
        )
    );
  }
}