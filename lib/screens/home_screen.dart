import 'package:RefreshFlutter/screens/hotel_screen.dart';
import 'package:RefreshFlutter/screens/ticket_view.dart';
import 'package:RefreshFlutter/utils/app_hotel_info.dart';
import 'package:RefreshFlutter/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            // padding: EdgeInsets.only(left: 10, right: 10),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Good morning", style: Styles.headLineStyle3,),
                        SizedBox(height: 6,),
                        Text(
                          "Book tickets",
                          style: Styles.headLineStyle2),
                      ],
                    ),
                    Container(
                      height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("assets/images/blog4.jpg")
                          )
                        ),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.search, color: Colors.yellow,),
                      Text("Search", style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Upcoming flights", style: Styles.headLineStyle1,),
                    InkWell(
                      onTap: (){print("I just tapped!");},
                        child: Text("View all", style: Styles.headLineStyle4,)
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: flightList.map((singleFlight) => TicketView(flight: singleFlight,)).toList(),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Hotels", style: Styles.headLineStyle1,),
                InkWell(
                  onTap: (){print("You tapped the second one!");},
                    child: Text("View all", style: Styles.headLineStyle4,)
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
              )
          )
        ],
      ),
    );
  }
}
