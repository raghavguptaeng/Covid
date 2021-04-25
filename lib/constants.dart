import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
var ScreenBackgroundcolor = Color(0xFF303136);
var ImpColor = Color(0xFFFBD35A);
var HeadingFontStyle = GoogleFonts.workSans(
  fontSize: 40,
  fontWeight:FontWeight.w400,
);
List kSanitization = [['Mask','face-mask.png'],['Gloves','glove.png'],['Face Shield','face-shield.png'],['Sanitizer','hand-sanitizer.png']];
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
var subTextStyle = TextStyle(color: Colors.grey, fontSize: 15);
var priceTextStyle = TextStyle(fontSize: 30, color: ImpColor);
var quantityButtonStyle = BoxDecoration(
    color: Color(0xff535356),
    borderRadius: BorderRadius.circular(15)
);