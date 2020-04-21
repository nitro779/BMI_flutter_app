import 'package:flutter/material.dart';
import 'ResultPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 0,weight = 0;
  double _bmival = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 100,
              ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "BMI Calculator",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700
                ),)
              ),
              SizedBox(height: 30,),
              Text(
                "Height(cm)",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink
                ),
              ),
              SizedBox(height: 20,),
              Container(
                  child: Slider(
                      value: this.height,
                      min: 0,
                      max: 240,
                      onChanged: (h){
                        setState(() {
                          this.height = h;
                        });
                      },
                      activeColor: Colors.indigo,
                      inactiveColor: Colors.redAccent,
                      label: "${this.height}",
                    divisions: 480,
                  ),
              ),
          SizedBox(height: 5,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Height = ${height} cm",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    fontWeight: FontWeight.w800

                  ),
                ),
              ),
          SizedBox(height: 30,),
          Text(
            "Weight(kg)",
            style: TextStyle(
                fontSize: 25,
                color: Colors.pink
            ),
          ),
          SizedBox(height: 30,),
          Container(
            child: Slider(
              value: this.weight,
              min: 0,
              max: 150,
              onChanged: (kg){
                setState(() {
                  this.weight = kg;
                });
              },
              activeColor: Colors.indigo,
              inactiveColor: Colors.redAccent,
              label: "${this.weight}",
              divisions: 300,
            )
          ),
              SizedBox(height: 5,),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Weight = ${weight} kgs",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w800

                  ),
                ),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.bottomCenter,
                child: FlatButton.icon(onPressed: () {
                  _bmival = (weight)/((height/100)*(height/100));
                  Navigator.pushNamed(context, '/result',arguments: {'bmi':_bmival});
                }, icon: Icon(Icons.favorite,color: Colors.white,), label: Text("Calculate",style: TextStyle(color: Colors.white),),color: Colors.pink,),
              )
            ],
          ),
        ),
    );
  }
}
