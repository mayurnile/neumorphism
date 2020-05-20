import 'package:flutter/material.dart';

import '../constants/assets.dart';

import './neumorphic_container.dart';

class AppLogo extends StatelessWidget {
  bool isSmall;

  AppLogo({this.isSmall});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    isSmall = isSmall ?? true;

    return Center(
      child: NeumorphicContainer(
        margin: const EdgeInsets.all(22.0),
        padding: const EdgeInsets.all(18.0),
        height: isSmall ? screenSize.height * 0.15 : screenSize.height * 0.2,
        child: Image.asset(
          Assets.LOGO,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
