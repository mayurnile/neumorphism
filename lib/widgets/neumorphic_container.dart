import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NeumorphicContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double borderRadius;

  NeumorphicContainer({
    @required this.child,
    this.height,
    this.width,
    this.padding,
    this.margin,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    double border = borderRadius ?? 36.0;

    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: MyColors.CANVAS_COLOR,
        borderRadius: BorderRadius.circular(border),
        boxShadow: [
          //light shadow
          BoxShadow(
            blurRadius: 12,
            color: MyColors.NEU_LIGHT_COLOR,
            offset: Offset(-3,-3),
          ),
          //dark shadow
          BoxShadow(
            blurRadius: 12,
            color: MyColors.NEU_DARK_COLOR,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: child,
    );
  }
}
