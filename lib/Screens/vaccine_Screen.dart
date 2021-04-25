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
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF4C4D51),
                    Color(0xff434240),
                  ],
                ),
              ),
              child: Image.asset(
                'assets/images/remi.png',
              ),
            ),
          ),
          Text(
            'Remidiviser',
            style: headTextStyle.copyWith(
                fontSize: 50, fontWeight: FontWeight.normal),
          ),
          Text(
            'By cipla',
            style: subTextStyle.copyWith(fontSize: 25),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                "Remdesivir is an antiviral that is given by intravenous (IV) infusion in the hospital. ",
                style: subTextStyle.copyWith(color: Colors.white, fontSize: 20),
              ),
            ),
            width: MediaQuery.of(context).size.width * 0.90,
          ),
          Text(
            '\$10',
            style: priceTextStyle.copyWith(fontSize: 50),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Center(
                          child: Text(
                        '50 ml',
                        style: subTextStyle.copyWith(
                            color: Colors.white, fontSize: 30),
                      )),
                    ),
                    decoration: quantityButtonStyle),
              ),
              GestureDetector(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        '100 ml',
                        style: subTextStyle.copyWith(
                            color: Colors.white, fontSize: 30),
                      ),
                    ),
                    decoration: quantityButtonStyle),
              ),
              GestureDetector(
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Text(
                        '150 ml',
                        style: subTextStyle.copyWith(
                            color: Colors.white, fontSize: 30),
                      ),
                    ),
                    decoration: quantityButtonStyle),
              ),
            ],
          )
        ],
      ),
    );
  }
}
