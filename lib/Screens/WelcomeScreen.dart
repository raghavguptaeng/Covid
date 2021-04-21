import 'package:covid/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  static String homeScreen = '/welcome';
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ScreenBackgroundcolor,
      appBar:kAppbar,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [

              ],
            )
          ],
        ),
      ),
      bottomNavigationBar:BottomBar(),
    );
  }

  SafeArea BottomBar() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
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
