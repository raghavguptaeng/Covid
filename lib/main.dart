import 'package:covid/Screens/WelcomeScreen.dart';
import 'package:covid/Screens/vaccine_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(initApp());
}

class initApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.homeScreen,
      routes:{
        HomeScreen.homeScreen:(context)=>HomeScreen(),
        VaccineScreen.VScreen:(context)=>VaccineScreen()
      },
    );
  }
}
