import 'package:flutter/material.dart';

enum Direction {
  HORIZONTAL,
  VERTICAL,
}

class CustomButtonIcon {
  Image icon; // Icon for the button
  Direction theDirection; // Arrange the icon to be on top/bottom of the text or left/right besides the text
  bool isIconAbove; // indicate whether iconb is above or below of  text
  bool isIconLeft; // indicate whether icon is left or right of text

  CustomButtonIcon({@required this.icon, @required this.theDirection, this.isIconAbove = true, this.isIconLeft = true});
}

class CustomButton extends StatelessWidget {
  final String name; //Name to display on Button
  final GestureTapCallback onPressed; //Para to take in method for Button
  final Color color; //Color of the Button
  final TextStyle textTheme; //Text theme of the Text displayed on Button
  final CustomButtonIcon buttonIcon; // Icon of the button

  //Only use: (Button Color)
  // 0xff2196f3 (Blue) - Login
  // 0xff3b424f (Charcoal) - Edit
  // 0xffef5350 (Orange) - Cancel/Report Issues
  // 0xffffffff (White) - In some cases

  CustomButton(
      {Key key,
      @required this.name,
      @required this.color,
      @required this.textTheme,
      @required this.onPressed,
      this.buttonIcon});

  Widget build(BuildContext context) {
    //Child widget for the button
    Widget childWidget;

    if (this.buttonIcon != null) {
      switch (buttonIcon.theDirection) {
        //Button contains icon found on left/right side of the text
        case Direction.HORIZONTAL:
          {
            if (this.buttonIcon.isIconLeft == true) {
              childWidget = Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                buttonIcon.icon,
                Text(
                  name,
                  style: textTheme,
                  textAlign: TextAlign.center,
                ),
              ]);
            } else {
              childWidget = Row(children: <Widget>[
                Text(name, style: textTheme),
                buttonIcon.icon,
              ]);
            }
          }
          break;
        //Button contains icon found top / bottom of the text
        case Direction.VERTICAL:
          {
            if (this.buttonIcon.isIconAbove == true) {
              childWidget = Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                buttonIcon.icon,
                Text(name, style: textTheme),
              ]);
            } else {
              childWidget = Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                Text(name, style: textTheme),
                buttonIcon.icon,
              ]);
            }
          }
          break;
      }
    } else {
      //Button contains text with no icon
      childWidget = Text(name, textAlign: TextAlign.center, style: textTheme);
    }

    //0xff2196f3
    return MaterialButton(
      elevation: 5.0,
      color: color,
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30.0))),
      onPressed: onPressed,
      child: childWidget,
    );
  }
}
