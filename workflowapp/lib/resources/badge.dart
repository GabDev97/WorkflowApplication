import 'package:badges/badges.dart';
import 'package:workflowapp/resources/colors.dart';
import 'package:flutter/material.dart';

class BadgeIcon extends StatelessWidget{
  final String iconImage; //Image to display
  final GestureTapCallback onPressed; //Para to take in method for Button
  final int notificationCount;//Number of Notification to display

  BadgeIcon(
      {Key key,
        @required this.iconImage,
        @required this.onPressed,
        @required this.notificationCount});
  Widget build(BuildContext context) {
    Widget child;
    if (this.notificationCount > 0 )
    {
      child = Badge( //More than 1 Notification
          position: BadgePosition.topEnd(top: 0, end: 2),
          elevation: 0,
          shape: BadgeShape.circle,
          badgeColor: Palette.redColor,
          badgeContent: Text(notificationCount.toString(), style: Theme.of(context).textTheme.bodyText2),
          child: IconButton(
            icon: Image.asset(iconImage),
            iconSize: 50,
            onPressed:onPressed,
          )
      );
    }
    else
    { //0 notification, use IconButton
      child = IconButton(
        icon: Image.asset(iconImage),
        iconSize: 50,
        onPressed: onPressed,
      );

    }
    return child;
  }
}