import 'package:flutter/material.dart';
import 'package:workflowapp/home.dart';
import 'package:workflowapp/resources/custombutton.dart';
import 'package:workflowapp/resources/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //Default Font Family:
          fontFamily : 'Roboto',
          //Default Text Theme: (Change Size)
          textTheme: TextTheme(
            //heading (Bold)
            headline1: TextStyle(fontSize: 19.0,fontWeight: FontWeight.w500, color: Color(Palette.blackColor)),

            //subheading
            headline2: TextStyle(fontSize: 18.0, color: Color(Palette.greyColor)),

            //Body Text
            bodyText1: TextStyle(fontSize: 18.0, color: Color(Palette.blackColor)),
            //For the Button Text
            bodyText2: TextStyle(fontSize: 20.0, color: Color(Palette.whiteColor), fontWeight: FontWeight.bold),

            //Caption
            caption: TextStyle(fontSize: 12.0,fontWeight: FontWeight.w500, color: Color(Palette.blackColor)),
          ),
          scaffoldBackgroundColor: Color(Palette.whiteColor) //Set all backgrounds to white

      ),
      home: LoginPage(title: 'Flutter Login'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
        backgroundColor: Color(Palette.aliceBlueColor),
        body: SingleChildScrollView(
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
                      child: Image.asset(
                        "assets/Logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    TextField(
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Email",
                          border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                    ),
                    SizedBox(height: 25.0),
                    TextField(
                      obscureText: true,
                      style: Theme.of(context).textTheme.bodyText1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          hintText: "Password",
                          border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                CustomButton(name: "Login", buttonColor: 0xff2196f3, textTheme: Theme.of(context).textTheme.bodyText2,
                    onPressed : ()
                    {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
                    }),
                    SizedBox(
                      height: 15.0,
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
