
import 'package:flutter/material.dart';

import '../services/weather.dart';
import 'FirstRow.dart';
String today_date = "17, Aug";
String today_day ="Thursday";
String cur_temp = "17";
String city_name = "New York";


class HomePage extends StatefulWidget {
   HomePage({required this.weatherData});

   var weatherData;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.weatherData);

  }

  void updateUI(dynamic weatherData){

    city_name = weatherData['data'][0]['city_name'];
    int temp = (weatherData['data'][0]['app_temp']).toInt();// as int;

    cur_temp = temp.toString();



  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF272727),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF272727),
        title: Text("${today_day}"+ " "+ "${today_date}"),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.calendar_month,
                ),
              )
          ),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.settings,
                ),
              )
          ),
        ],
      ),
      body:
      Column(
        children: [
          FirstRow(current_temp: cur_temp, Image_value: 'Abc', city_name: city_name,),

        ],
      )

      ,
    );
  }
}
