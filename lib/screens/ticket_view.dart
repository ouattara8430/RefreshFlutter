import 'package:RefreshFlutter/utils/app_layout.dart';
import 'package:RefreshFlutter/utils/app_styles.dart';
import 'package:RefreshFlutter/widget/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  Map<String, dynamic> flight;
  TicketView({Key key, this.flight}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: EdgeInsets.only(left: 16),
        child: Column(
          children: <Widget>[
            /*
            * showing the blue card / ticket
            * */
            Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              ),
              // margin: EdgeInsets.only(left: 12, right: 12),
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(flight['from']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      // Spacer(),
                      Expanded(child: Container(),),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: <Widget>[
                          SizedBox(
                            height: 22,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints){
                                print("The width is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate((constraints.constrainWidth() / 6).floor(), (index) => SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                                  )),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.airplanemode_active, textDirection: TextDirection.ltr, color: Colors.white,),)),
                        ],
                      )),
                      ThickContainer(),
                      Expanded(child: Container(),),
                      Text(flight['to']['code'], style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(height: 20,),
                      Text(flight['from']['name'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container(),),
                      Text(flight['flying_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container(),),
                      Text(flight['to']['name'], style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
            /*
            * showing the red card / ticket
            * */
            Container(
              color: Colors.deepOrangeAccent,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 10, height: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        )
                    ),
                  ),
                  Expanded(child: Container(
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints){
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth() / 15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                          )),
                        );
                      },
                    ),
                  )),
                  SizedBox(
                    width: 10, height: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                        )
                    ),
                  ),
                ],
              ),
            ),
            /*
            * showing the bottom red card / ticket
            * */
            Container(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(flight['date'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          SizedBox(height: 10,),
                          Text("Date", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(flight['departure_time'], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          SizedBox(height: 10,),
                          Text("Departure time", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(flight['number'].toString(), style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          SizedBox(height: 10,),
                          Text("Number", style: Styles.headLineStyle3.copyWith(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
