import 'package:RefreshFlutter/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppIconText extends StatelessWidget {
  IconData icon;
  String text;

  AppIconText({Key key, this.icon, this.text}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 17),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.grey,),
          SizedBox(width: 10,), // Gap()
          Text(text, style: Styles.headLineStyle3.copyWith(color: Colors.black87),)
        ],
      ),
    );
  }
}
