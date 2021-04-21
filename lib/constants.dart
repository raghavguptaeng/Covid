import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
var ScreenBackgroundcolor = Color(0xFF303136);
var ImpColor = Color(0xFFFBD35A);
var HeadingFontStyle = GoogleFonts.workSans(
  fontSize: 40,
  fontWeight:FontWeight.w400,
);
var kAppbar = AppBar(
  title: Text(
    'HOME',
    style: HeadingFontStyle,
  ),
  backgroundColor: ScreenBackgroundcolor,
  elevation: 1,
);
