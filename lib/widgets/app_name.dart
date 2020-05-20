import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class AppName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        'DHOBILITE',
        style: GoogleFonts.openSans(
          fontSize: 32.0,
          fontWeight: FontWeight.w900,
          color: MyColors.FONT_MAIN_COLOR,
          letterSpacing: 18,
        ),
      ),
    );
  }
}
