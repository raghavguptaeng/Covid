import 'package:covid/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static String homeScreen = '/welcome';
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundcolor,
      appBar: AppBar(
        title: Text(
          'HOME',
          style: HeadingFontStyle,
        ),
        backgroundColor: ScreenBackgroundcolor,
        elevation: 1,
      ),
    );
  }
}
