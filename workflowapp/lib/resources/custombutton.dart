import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  final String name; //Name to display on Button
  final GestureTapCallback onPressed; //Para to take in method for Button
  final int buttonColor; //Color of the Button
  final TextStyle textTheme; //Text theme of the Text displayed on Button

  //Only use: (Button Color)
  // 0xff2196f3 (Blue) - Login
  // 0xff3b424f (Charcoal) - Edit
  // 0xffef5350 (Orange) - Cancel/Report Issues
  // 0xffffffff (White) - In some cases

  CustomButton(
      {Key key, @required this.name,@required this.buttonColor, @required this.textTheme ,@required this.onPressed });

  Widget build(BuildContext context) { //0xff2196f3
    return  Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(30.0),
        color: Color(buttonColor),
        child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: onPressed,
            child: Text( name,
                textAlign: TextAlign.center,
                style: textTheme
            )
        )
    );
  }
}