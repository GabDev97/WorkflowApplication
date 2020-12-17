import 'package:flutter/material.dart';
import 'package:workflowapp/main.dart';
import 'package:workflowapp/menu.dart';
//Add additional routes here

class Home extends StatelessWidget
{
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xffe7f4f7),
        body:
        Column(children: <Widget>[
          SizedBox(//Logo
            height: 155.0,
            child: Image.asset(
              "assets/Logo.png",
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
                    IconButton(
                      icon: Image.asset('assets/PackingIcon.png'),
                      iconSize: 50,
                      onPressed: () {
                        //Go to Packing Page
                        //MaterialPageRoute(builder: (context) => Packing_home());
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => Packing_home()));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                          Title: "Packing",
                          ButtonTitle1:"Ready for Packing",
                          ButtonTitle2: "Packing Task List History",)));
                      },
                    ),
                    Text('Packing',style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    IconButton(
                      icon: Image.asset('assets/UnpackingIcon.png'),
                      iconSize: 50,
                      onPressed: () {
                        //Go to Unpacking Page
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                          Title: "Unpacking",
                          ButtonTitle1:"Ready for Unpacking",
                          ButtonTitle2: "Unpacking Task List History",)));
                      },
                    ),
                    Text('Unpacking',style: Theme.of(context).textTheme.bodyText1)
                  ],
                ),
              ),
            ],
          ),
          Row(//Row 2
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('assets/ReceivingIcon.png'),
                        iconSize: 50,
                        onPressed: () {
                          //Go to Receiving Page
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                            Title: "Receiving",
                            ButtonTitle1:"Ready for Receiving",
                            ButtonTitle2: "Receiving Task List History",)));
                        },
                      ),
                      Text('Receiving',style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('assets/ReleasingIcon.png'),
                        iconSize: 50,
                        onPressed: () {
                          //Go to Releasing Page
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                            Title: "Releasing",
                            ButtonTitle1:"Ready for Releasing",
                            ButtonTitle2: "Cargo Details",)));
                        },
                      ),
                      Text('Releasing',style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                ),
              ]),
          Row(// Row 3
              mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset('assets/SettingsIcon.png'),
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
                        icon: Image.asset('assets/LogoutIcon.png'),
                        iconSize: 50,
                        onPressed: () {
                          //Logout
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                      ),
                      Text('Logout',style: Theme.of(context).textTheme.bodyText1)
                    ],
                  ),
                )
              ]),
        ]));
  }
}