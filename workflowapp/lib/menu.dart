import 'package:flutter/material.dart';
import 'package:workflowapp/packing/packing_home.dart';
import 'package:workflowapp/receiving/receiving_home.dart';
import 'package:workflowapp/releasing/releasing_home.dart';
import 'package:workflowapp/unpacking/unpacking_home.dart';
import 'package:workflowapp/resources/appbar.dart';
import 'package:workflowapp/resources/custombutton.dart';
import 'package:workflowapp/resources/colors.dart';

class Menu extends StatelessWidget
{
  final String title; //Title to show on Page
  final String buttonTitle1; //Button Title
  final String buttonTitle2; //2nd Button Title
  Menu({Key key, @required this.title, @required this.buttonTitle1 , @required this.buttonTitle2});

  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(Palette.aliceBlueColor),
        appBar: CustomAppBar(title: title + " Main Menu"),//Title of App bar
        body:SingleChildScrollView(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                        height: 155.0,
                        child:(
                            Text(title, style:Theme.of(context).textTheme.headline1.copyWith(fontSize:24))
                        )
                    ),
                    SizedBox(height: 45.0),
                    CustomButton(name: buttonTitle1, buttonColor: Palette.whiteColor, textTheme: Theme.of(context).textTheme.bodyText1,
                        onPressed : ()
                        {
                          if (buttonTitle1 == "Ready for Releasing"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Releasing_Home()));}
                          if (buttonTitle1 == "Ready for Receiving"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Receiving_Home()));}
                          if (buttonTitle1 == "Ready for Packing"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Packing_Home()));}
                          if (buttonTitle1 == "Ready for Unpacking"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Unpacking_Home()));}
                        }),
                    SizedBox(height: 25.0),
                    CustomButton(name: buttonTitle2, buttonColor: Palette.whiteColor, textTheme: Theme.of(context).textTheme.bodyText1,
                        onPressed : ()
                        {
                          //Edit the routing
                          //if (buttonTitle2 == "Cargo Details"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Releasing_home()));}
                          //if (buttonTitle2 == "Receiving Task List History"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Receiving_home()));}
                          //if (buttonTitle2 == "Packing Task List History"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Packing_home()));}
                          //if (buttonTitle2 == "Unpacking Task List History"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Unpacking_home()));}
                        }),
                    SizedBox(
                      height: 35.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}