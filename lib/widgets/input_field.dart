import 'package:flutter/material.dart';

import '../constants/colors.dart';

import './neumorphic_container.dart';

class InputField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool obscureText;
  final Function onSaved;
  final Function validator;
  final TextEditingController controller;
  InputField({
    @required this.label,
    @required this.icon,
    @required this.obscureText,
    this.onSaved,
    this.validator,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        NeumorphicContainer(
          margin: const EdgeInsets.only(left: 22.0, right: 6.0),
          padding: const EdgeInsets.all(18.0),
          borderRadius: 12.0,
          child: Icon(
            icon,
            color: MyColors.FONT_MAIN_COLOR,
          ),
        ),
        Flexible(
          child: NeumorphicContainer(
            margin: const EdgeInsets.only(right: 22.0, left: 6.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4.0),
            borderRadius: 8.0,
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              style: textTheme.headline5.copyWith(
                color: MyColors.FONT_MAIN_COLOR,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                hintText: label,
                hintStyle: textTheme.headline6.copyWith(
                  fontWeight: FontWeight.w900,
                  color: MyColors.FONT_LIGHT_COLOR,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
