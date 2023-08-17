import 'package:flutter/material.dart';

class FirstRow extends StatelessWidget {
  FirstRow({ required this.current_temp, required this.Image_value, required this.city_name});
   String current_temp;
   String Image_value;
   String city_name;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var fheight = size.height;
    var fwidth = size.width;




    return Container(
      margin: EdgeInsets.all(fwidth*0.05),

      height: fheight*0.2,
      width: fwidth,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("Thurs, 06:75pm",style: TextStyle(fontSize: 15.0,color: Colors.white)),
              Text(current_temp +"°", style: TextStyle(fontSize: 50.0,color: Colors.white),),
              Text(city_name , style: TextStyle(fontSize: 25.0,color: Colors.white),),

            ],
          ),
          Image.asset("assets/images/a03d.png")


        ],
      ),
    );
  }
}
