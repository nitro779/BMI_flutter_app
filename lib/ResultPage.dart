import 'package:flutter/material.dart';
import 'HomePage.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Map res = {};
  String img;
  @override
  Widget build(BuildContext context) {
    res = res.isNotEmpty?res:ModalRoute.of(context).settings.arguments;
    img = res["bmi"]>18.5 && res["bmi"]<24.9?"happy.png":"sad.png";
    return Scaffold(
      appBar: AppBar(
        title: Text("Result"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Image.asset("images/${img}")
                  ),
                  SizedBox(height: 30,),
                  Text(
                    "Your BMI is ${res['bmi']}",
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 20,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(res["bmi"]>=18.5 && res['bmi']<=28.5?
                  "You are in Perfect Conditionn":res["bmi"]<18.5?"You are Underwighted":"You are over weighted",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w800
                  ),),
                  SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.center,
                      child: FlatButton.icon(onPressed: () {
                        Navigator.pop(context);
                      }, icon: Icon(Icons.navigate_before), label: Text("Calculate Again"),color: Colors.green,))
                ],
              ),
            ),
    )
    )
    );
  }
}
