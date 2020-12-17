import 'package:flutter/material.dart';
import 'package:workflowapp/packing/packing_home.dart';
import 'package:workflowapp/receiving/receiving_home.dart';
import 'package:workflowapp/releasing/releasing_home.dart';
import 'package:workflowapp/unpacking/unpacking_home.dart';
import 'package:workflowapp/resources/appbar.dart';
import 'package:workflowapp/resources/custombutton.dart';

class Menu extends StatelessWidget
{
  final String Title; //Title to show on Page
  final String ButtonTitle1; //Button Title
  final String ButtonTitle2; //2nd Button Title
  Menu({Key key, @required this.Title, @required this.ButtonTitle1 , @required this.ButtonTitle2});

  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xffe7f4f7),
        appBar: CustomAppBar(Title: Title + " Main Menu"),//Title of App bar
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
                            Text(Title, style:Theme.of(context).textTheme.headline1.copyWith(fontSize:24))
                        )
                    ),
                    SizedBox(height: 45.0),
                    CustomButton(Name: ButtonTitle1, ButtonColor: 0xffffffff, TextTheme: Theme.of(context).textTheme.bodyText1,
                        onPressed : ()
                        {
                          if (ButtonTitle1 == "Ready for Releasing"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Releasing_home()));}
                          if (ButtonTitle1 == "Ready for Receiving"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Receiving_home()));}
                          if (ButtonTitle1 == "Ready for Packing"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Packing_home()));}
                          if (ButtonTitle1 == "Ready for Unpacking"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Unpacking_home()));}
                        }),
                    SizedBox(height: 25.0),
                    CustomButton(Name: ButtonTitle2, ButtonColor: 0xffffffff, TextTheme: Theme.of(context).textTheme.bodyText1,
                        onPressed : ()
                        {
                          //Edit the routing
                          //if (ButtonTitle2 == "Cargo Details"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Releasing_home()));}
                          //if (ButtonTitle2 == "Receiving Task List History"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Receiving_home()));}
                          //if (ButtonTitle2 == "Packing Task List History"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Packing_home()));}
                          //if (ButtonTitle2 == "Unpacking Task List History"){ Navigator.push(context, MaterialPageRoute(builder: (context) => Unpacking_home()));}
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