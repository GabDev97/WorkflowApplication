import 'package:flutter/material.dart';
import 'package:workflowapp/main.dart';
import 'package:workflowapp/menu.dart';
import 'package:workflowapp/resources/colors.dart';
import 'package:workflowapp/resources/badge.dart';
//Add additional routes here

class Home extends StatelessWidget {
  //For testing Purposes:
  var counter = 0;
  var counter1 = 1;

  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Palette.aliceBlueColor,
        body: Container(
        child : Padding(padding: const EdgeInsets.all(36.0),
            child:Column(children: <Widget>[
              SizedBox(
            //Logo
            //height: 155.0,
              child: Image.asset(
              'assets/Logo.png',
              fit: BoxFit.contain,
            ),
          ),
              Row(
            //Row 1
            mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
            crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    BadgeIcon(iconImage:'assets/PackingIcon.png', notificationCount: counter1, onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                        title: "Packing",
                        buttonTitle1:"Ready for Packing",
                        buttonTitle2: "Packing Task List History",)));
                    }),
                    Text('Packing', style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    BadgeIcon(iconImage:'assets/UnpackingIcon.png', notificationCount: counter1, onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                        title: "Unpacking",
                        buttonTitle1:"Ready for Unpacking",
                        buttonTitle2: "Unpacking Task List History",)));
                    }),
                    Text('Unpacking', style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
            ],
          ),
          Row(
              //Row 2
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      BadgeIcon(iconImage:'assets/ReceivingIcon.png', notificationCount: counter, onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                          title: "Receiving",
                          buttonTitle1:"Ready for Receiving",
                          buttonTitle2: "Receiving Task List History",)));
                      }),
                      Text('Receiving', style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      BadgeIcon(iconImage:'assets/ReleasingIcon.png', notificationCount: counter, onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                          title: "Releasing",
                          buttonTitle1:"Ready for Releasing",
                          buttonTitle2: "Cargo Details",)));
                      }),
                      Text('Releasing', style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
              ]),
          Row(
              // Row 3
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.settings_outlined, color: Palette.dodgerBlueColor),
                        iconSize: 50,
                        onPressed: () {
                          //Go to Settings Page
                          //MaterialPageRoute(builder: (context) => Settings());
                        },
                      ),
                      Text('Settings', style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.logout, color: Palette.dodgerBlueColor),
                        iconSize: 50,
                        onPressed: () {
                          //Logout
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                      ),
                      Text('Logout', style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                )
              ]),
        ]))));
  }
}
