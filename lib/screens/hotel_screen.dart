import 'package:RefreshFlutter/utils/app_layout.dart';
import 'package:RefreshFlutter/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  Map<String, dynamic> hotel;
  HotelScreen({Key key, this.hotel}): super(key: key);

  @override
  Widget build(BuildContext context) {
    print("The price is ${hotel['price']} FCFA");

    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.60,
      height: 350,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 10
            )
          ]
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Styles.primaryColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/${hotel['image']}"),
                )
              ),
            ),
            SizedBox(height: 12,),
            Text(hotel['location'], style: Styles.headLineStyle2.copyWith(color: Colors.white),),

            SizedBox(height: 12,),
            Text(hotel['place'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),

            SizedBox(height: 12,),
            Text("${hotel['price']} FCFA / night", style: Styles.headLineStyle4.copyWith(color: Colors.white),),

          ],
        ),
      )
    );
  }
}
