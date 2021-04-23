import 'package:covid/constants.dart';
import 'package:flutter/material.dart';
class VaccineScreen extends StatefulWidget {
  static String VScreen = '/vscreen';
  @override
  _VaccineScreenState createState() => _VaccineScreenState();
}

class _VaccineScreenState extends State<VaccineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundcolor,
      appBar: AppBar(
        backgroundColor: ScreenBackgroundcolor,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
