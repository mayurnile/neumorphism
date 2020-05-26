import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';

import './screens/all_screens.dart';

import './constants/colors.dart';
import './constants/routes.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
        enabled: false,
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhobilite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColors.PRIMARY_COLOR,
        accentColor: MyColors.PRIMARY_COLOR,
        canvasColor: MyColors.CANVAS_COLOR,
        buttonColor: MyColors.CANVAS_COLOR,
        fontFamily: GoogleFonts.quicksand().fontFamily,
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
            color: MyColors.FONT_MAIN_COLOR,
            fontSize: 42.0,
            fontWeight: FontWeight.w900,
          ),
          headline2: GoogleFonts.quicksand(
            color: MyColors.FONT_MAIN_COLOR,
            fontSize: 16.0,
            fontWeight: FontWeight.w900,
          ),
          headline3: GoogleFonts.quicksand(
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
            color: MyColors.FONT_LIGHT_COLOR,
          ),
          headline5: GoogleFonts.quicksand(
            fontWeight: FontWeight.w700,
            color: MyColors.FONT_MAIN_COLOR,
            fontSize: 20.0,
          ),
          bodyText1: GoogleFonts.quicksand(
            fontWeight: FontWeight.w500,
            color: MyColors.FONT_LIGHT_COLOR,
            fontSize: 18.0,
          ),
          bodyText2: GoogleFonts.quicksand(
            fontWeight: FontWeight.w300,
            color: MyColors.FONT_LIGHT_COLOR,
            fontSize: 16.0,
          ),
          button: GoogleFonts.quicksand(
              fontWeight: FontWeight.w900,
              fontSize: 28.0,
              color: MyColors.PRIMARY_COLOR),
        ),
      ),
      routes: {
        Routes.LOGIN_SCREEN: (ctx) => LoginScreen(),
        Routes.SIGNUP_SCREEN: (ctx) => SignupScreen(),
        Routes.HOME_SCREEN: (ctx) => HomeScreen(),
      },
      home: LoginScreen(),
    );
  }
}
