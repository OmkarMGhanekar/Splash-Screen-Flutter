import 'dart:async';

import 'package:flutter/material.dart';
import 'second_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();

}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
    }

  @override
  void initState() {
    
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => SecondScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset(
                "assets/splash.png",
                height: 200.0,
                width: 200.0,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Splash Screen",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
                backgroundColor: Colors.redAccent,
                valueColor: AlwaysStoppedAnimation(Colors.green),
                strokeWidth: 10)
          ],
        ),
      ),
    );
  }
}
