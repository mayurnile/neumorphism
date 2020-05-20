import 'package:flutter/material.dart';

import '../widgets/app_name.dart';
import '../widgets/app_logo.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  Size screenSize;
  TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //heading widget
            Row(
              children: <Widget>[
                //app logo
                AppLogo(isSmall: true),
                //app Name
                Flexible(child: AppName()),
                //space
                SizedBox(width: screenSize.width * 0.05),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
