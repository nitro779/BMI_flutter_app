import 'package:flutter/material.dart';
import 'FlashScreen.dart';
import 'HomePage.dart';
import 'ResultPage.dart';
void main() => runApp(
  MaterialApp(
    theme: ThemeData.light(),
    routes: {
      '/': (context) =>FlashScreen(),
      '/home' :(context) =>HomePage(),
      '/result':(context) =>ResultPage()
    },
  )
);