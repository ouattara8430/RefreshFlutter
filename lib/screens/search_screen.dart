import 'package:RefreshFlutter/utils/app_layout.dart';
import 'package:RefreshFlutter/utils/app_styles.dart';
import 'package:RefreshFlutter/widget/app_double_text.dart';
import 'package:RefreshFlutter/widget/app_icon_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 12),
        children: <Widget>[
          SizedBox(height: 40,),
          Row(
            children: <Widget>[
              Text("What are \nyou looking for?", style:  Styles.headLineStyle1.copyWith(fontSize: 35),)
            ],
          ),
          SizedBox(height: 18,),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: size.width * .44,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(20))
                  ),
                    child: Center(child: Text("Airline tickets", style: Styles.headLineStyle4.copyWith(color: Colors.black),))
                ),
                Container(
                    width: size.width * .44,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.horizontal(right: Radius.circular(20))
                    ),
                    child: Center(child: Text("Hotels", style: Styles.headLineStyle4.copyWith(color: Colors.black),))
                ),
                // Text("Hotels", style: Styles.headLineStyle4.copyWith(color: Colors.black),),
              ],
            ),
          ),
          SizedBox(height:24,),
          AppIconText(icon: Icons.flight_takeoff, text: "Departure",),
          SizedBox(height:24,),
          AppIconText(icon: Icons.flight_land, text: "Arrival",),
          SizedBox(height:24,),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 17),
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(10),
            ),
              child: Center(
                  child: Text("Find tickets", style: Styles.headLineStyle3.copyWith(color: Colors.white,)))
          ),
          SizedBox(height: 24,),
          AppDoubleText(bigText: "Upcoming flights", smallText: "View all",),
          SizedBox(height: 24,),
          Row(
            children: <Widget>[
              Container(
                width: size.width * .44,
                height: 400,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 17),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Styles.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage("assets/images/ab.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text("20% discount on business class tickets from Airline on International", style: Styles.headLineStyle2.copyWith(fontSize: 23),)
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14, horizontal: 14),
                    margin: EdgeInsets.only(left: 14),
                    width: size.width * .44,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Discount \nfor survey", style: Styles.headLineStyle1.copyWith(color: Colors.white),),
                        SizedBox(height: 14,),
                        Text("Take the survey about our services and get a discount", style: Styles.headLineStyle4.copyWith(color: Colors.white, fontSize: 18),),
                      ],
                    ),
                  ),
                  SizedBox(height: 36,),
                  Container(
                    margin: EdgeInsets.only(left: 14),
                    width: size.width * .44,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
