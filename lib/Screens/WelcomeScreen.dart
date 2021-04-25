import 'package:covid/Screens/vaccine_Screen.dart';
import 'package:covid/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../VaccineData.dart';
import 'vaccine_Screen.dart';
class HomeScreen extends StatefulWidget {
  static String homeScreen = '/welcome';
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List Categories = ['Vaccine', 'Sanitizer', 'Mask', 'Gloves', 'Medicines'];
  List actCategories = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundcolor,
      appBar: kAppbar,
      body: SafeArea(
        child: Column(
          children: [
            kCategories(),
            Expanded(
                child: ListView(children: [
                  kVaccine(),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Text('Sanitization',style: headTextStyle,),
                  ),
                  Sanitization(),
                ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }

  Container Sanitization() {
    return Container(
      height: 300,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: kSanitization.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              width: 200,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF465465),
                      secColor,
                    ],
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(kSanitization[index][0],style: headTextStyle,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'assets/images/${kSanitization[index][1]}',
                      width: 150,
                      height: 150,
                    ),
                  ),
                ],
              )
            ),
          );
        },
      ),
    );
  }

  Container kVaccine() {
    return Container(
      height: 350,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Vaccines.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(20),
            width: 200,
            decoration: BoxDecoration(
                color: secColor, borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/${Vaccines[index][3]}',
                  ),
                  width: 300,
                  height: 200,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Vaccines[index][0],
                      style: headTextStyle,
                    ),
                    Text(
                      'By ' + Vaccines[index][1],
                      style: subTextStyle,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        Vaccines[index][2] + '\$',
                        style: priceTextStyle,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, VaccineScreen.VScreen);
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          child: Icon(Icons.shopping_bag_outlined),
                          decoration: BoxDecoration(
                              color: ImpColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container kCategories() {
    return Container(
      height: 55,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              for (int i = 0; i < actCategories.length; ++i) {
                actCategories[i] = false;
              }
              setState(() {
                actCategories[index] = true;
              });
            },
            child: Container(
              width: 90,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  Categories[index],
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: (actCategories[index]) ? Colors.black : ImpColor),
                ),
              ),
              decoration: BoxDecoration(
                  color:
                      (actCategories[index]) ? Colors.white : Color(0xFF4B4E55),
                  borderRadius: BorderRadius.circular(10)),
            ),
          );
        },
      ),
    );
  }

  SafeArea BottomBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
            rippleColor: Colors.grey[300],
            hoverColor: Colors.grey[100],
            gap: 8,
            activeColor: ImpColor,
            color: Colors.white54,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.black,
            tabs: [
              GButton(
                icon: FontAwesomeIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: FontAwesomeIcons.cartPlus,
                text: 'Cart',
              ),
              GButton(
                icon: FontAwesomeIcons.bookMedical,
                text: 'Doctors',
              ),
              GButton(
                icon: FontAwesomeIcons.user,
                text: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }),
      ),
    );
  }
}
