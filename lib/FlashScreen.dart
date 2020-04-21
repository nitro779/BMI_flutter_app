import 'package:flutter/material.dart';
import 'HomePage.dart';

class FlashScreen extends StatefulWidget {
  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        padding: EdgeInsets.all(30),
        alignment: Alignment.center,
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.center,
              child: Text(
                "Welcome to the BMI Calculator",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.normal
                ),
              ),
            ),
            SizedBox(height: 7,),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                "(Body Mass Index)",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal
                ),
              ),
            ),
            SizedBox(height: 30),
            FlatButton.icon(onPressed: () {
              Navigator.pushNamed(context, '/home');
            }, icon: Icon(Icons.navigate_next), label: Text("Go",style: TextStyle(color: Colors.white,),),color: Colors.green,)
          ],
        ),
      ),
    );
  }
}
