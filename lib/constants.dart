import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
var ScreenBackgroundcolor = Color(0xFF303136);
var ImpColor = Color(0xFFFBD35A);
var HeadingFontStyle = GoogleFonts.workSans(
  fontSize: 40,
  fontWeight:FontWeight.w400,
);
List Vaccines = [['Remidesivir','Cipla','10','remi.png'],['Dexamethasone','Phoenix','5','dex.png'],['Bamlanivimab','Lilly','12','bal.png']];
var secColor = Color(0xFF444540);
var kAppbar = AppBar(
  title: Center(
    child: Text(
      'HOME',
      style: HeadingFontStyle,
    ),
  ),
  backgroundColor: ScreenBackgroundcolor,
  elevation: 1,
);
var headTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold
);