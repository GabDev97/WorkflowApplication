import 'package:flutter/material.dart';

//Custom App Bar to be called at every page
class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String Title; //Title to show on the bar
  CustomAppBar({Key key, @required this.Title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: 10.0,
          centerTitle: true,
          title: new Text(
            Title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
          ),
        )
    );
  }
}