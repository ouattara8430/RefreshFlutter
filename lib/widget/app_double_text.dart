import 'package:RefreshFlutter/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  final String bigText;
  final String smallText;
  AppDoubleText({Key key, this.bigText, this.smallText}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(bigText, style: Styles.headLineStyle2,),
          InkWell(
              child: Text(smallText, style: Styles.headLineStyle3,)
          ),
        ],
      ),
    );
  }
}
