import 'package:flutter/material.dart';
import 'package:workflowapp/resources/colors.dart';

//Custom App Bar to be called at every page
class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String title; //Title to show on the bar
  CustomAppBar({Key key, @required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title, style: Theme.of(context).textTheme.bodyText1
      ),
      backgroundColor: Palette.whiteColor,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Palette.dodgerBlueColor,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
              //Do something
            },
            child: Icon(
              Icons.help_outline,
              color: Palette.dodgerBlueColor,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}