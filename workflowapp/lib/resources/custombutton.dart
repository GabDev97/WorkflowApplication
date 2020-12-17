import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String Name; //Name to display on Button
  final GestureTapCallback onPressed; //Para to take in method for Button
  final int ButtonColor; //Color of the Button
  final TextStyle TextTheme; //Text theme of the Text displayed on Button

  //Only use: (Button Color)
  // 0xff2196f3 (Blue) - Login
  // 0xff3b424f (Charcoal) - Edit
  // 0xffef5350 (Orange) - Cancel/Report Issues
  // 0xffffffff (White) - In some cases

  CustomButton(
      {Key key, @required this.Name,@required this.ButtonColor, @required this.TextTheme ,@required this.onPressed });

  Widget build(BuildContext context) { //0xff2196f3
    return  Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(ButtonColor),
        child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: onPressed,
            child: Text( Name,
                textAlign: TextAlign.center,
                style: TextTheme
            )
        )
    );
  }
}