import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String takaSign = '৳';

MaterialColor customMaterialColor = MaterialColor(0xFF10AB83, color);
Map<int, Color> color = {
  50: const Color.fromRGBO(16, 171, 131, .1),
  100: const Color.fromRGBO(16, 171, 131, .2),
  200: const Color.fromRGBO(16, 171, 131, .3),
  300: const Color.fromRGBO(16, 171, 131, .4),
  400: const Color.fromRGBO(16, 171, 131, .5),
  500: const Color.fromRGBO(16, 171, 131, .6),
  600: const Color.fromRGBO(16, 171, 131, .7),
  700: const Color.fromRGBO(16, 171, 131, .8),
  800: const Color.fromRGBO(16, 171, 131, .9),
  900: const Color.fromRGBO(16, 171, 131, 1),
};

Color customColor = const Color(0xFF10AB83);

TextStyle tableTextStyleBoldLarge = GoogleFonts.poppins(
  fontSize: 14,
  fontWeight: FontWeight.w600,
);
TextStyle tableTextStyleBoldLargeWhite = GoogleFonts.poppins(
    fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white);
TextStyle tableTextStyleBold = GoogleFonts.poppins(
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

TextStyle tableTextStyle = GoogleFonts.poppins(
  fontSize: 12,
);

TextStyle takaTextStyle = GoogleFonts.poppins(
  fontSize: 12,
  color: Colors.deepOrangeAccent,
  fontWeight: FontWeight.w600,
);

TextStyle borderTextStyle = GoogleFonts.poppins(
  fontSize: 13,
  color: Colors.white,
  fontWeight: FontWeight.w600,
);
