import 'package:flutter/material.dart';
import 'package:workflowapp/main.dart';
import 'package:workflowapp/menu.dart';
import 'package:workflowapp/resources/colors.dart';
import 'package:workflowapp/resources/badge.dart';
//Add additional routes here

//Change this
String employeeName = 'James Tan Wei Ming';
String employeeRole = 'Forklift Operator';
String departmentName = "Tuas WH";

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}
class _Home extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.whiteColor,
        body: Center(
          child: new SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Palette.dodgerBlueColor, Palette.lightBlueAccentColor])),
                child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        height: 80,
                        //width: 360, //MediaQuery.of(context).size.width,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(employeeName,
                                  style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize:28)),
                              SizedBox(
                                height: 5,
                              ),
                              Text(employeeRole + ", " + departmentName,
                                  style: Theme.of(context).textTheme.bodyText2.copyWith(fontSize:16)),
                            ]),

                      ),
                      Expanded(
                        child:Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                                color: Palette.whiteColor
                            ),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  GridView.count(
                                      shrinkWrap: true,
                                      padding: EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      crossAxisCount: 2,
                                      children:[
                                        Column(
                                          children: <Widget>[
                                            Card(
                                                child: BadgeIcon(iconImage:'assets/Packing.png', notificationCount: 1, onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                                                    title: "Packing",
                                                    buttonTitle1:"Ready for Packing",
                                                    buttonTitle2: "Packing Task List History",)));
                                                })),
                                            Text('Packing',style: Theme.of(context).textTheme.bodyText1)
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Card(
                                                child: BadgeIcon(iconImage:'assets/Unpacking.png', notificationCount: 0, onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                                                    title: "Unpacking",
                                                    buttonTitle1:"Ready for Unpacking",
                                                    buttonTitle2: "Unpacking Task List History",)));
                                                })),
                                            Text('Unpacking',style: Theme.of(context).textTheme.bodyText1)
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Card(
                                                child: BadgeIcon(iconImage:'assets/Receiving.png', notificationCount: 0, onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                                                    title: "Receiving",
                                                    buttonTitle1:"Ready for Receiving",
                                                    buttonTitle2: "Receiving Task List History",)));
                                                })),
                                            Text('Receiving',style: Theme.of(context).textTheme.bodyText1)
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Card(
                                                child: BadgeIcon(iconImage:'assets/Releasing.png', notificationCount: 0, onPressed: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Menu(
                                                    title: "Releasing",
                                                    buttonTitle1:"Ready for Releasing",
                                                    buttonTitle2: "Cargo Details",)));
                                                })),
                                            Text('Releasing',style: Theme.of(context).textTheme.bodyText1)
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Card(
                                                child: BadgeIcon(iconImage:'assets/Settings.png', notificationCount: 0, onPressed: (){
                                                  //Go to settings Page
                                                  ////MaterialPageRoute(builder: (context) => Settings());
                                                })),
                                            Text('Settings',style: Theme.of(context).textTheme.bodyText1)
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Card(
                                                child: BadgeIcon(iconImage:'assets/Logout.png', notificationCount: 0, onPressed: (){
                                                  //Logout
                                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                                })),
                                            Text('Logout',style: Theme.of(context).textTheme.bodyText1)
                                          ],
                                        ),
                                      ]
                                  )
                                ]
                            )
                        ),
                      )])
            ),
          ),
        ));
  }
}