import 'package:flutter/material.dart';

import '../constants/colors.dart';

import './neumorphic_container.dart';

class MyStepper extends StatefulWidget {
  final int currentIndex;

  MyStepper({@required this.currentIndex});

  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper>
    with SingleTickerProviderStateMixin {
  Size screenSize;
  TextTheme textTheme;
  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    textTheme = Theme.of(context).textTheme;
    int index = widget.currentIndex;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //drawables
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //step 1
            NeumorphicContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 24.0,
                ),
                backgroundColor: MyColors.PRIMARY_COLOR,
              ),
            ),
            //step 1 progress bar
            Flexible(
              child: NeumorphicContainer(
                height: screenSize.height * 0.03,
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: index > 0
                        ? MyColors.PRIMARY_COLOR
                        : MyColors.CANVAS_COLOR,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            //step 2
            NeumorphicContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                child: index > 0
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 24.0,
                      )
                    : SizedBox.shrink(),
                backgroundColor:
                    index > 0 ? MyColors.PRIMARY_COLOR : MyColors.CANVAS_COLOR,
              ),
            ),
            //step 2 progress bar
            Flexible(
              child: NeumorphicContainer(
                height: screenSize.height * 0.03,
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: index > 1
                        ? MyColors.PRIMARY_COLOR
                        : MyColors.CANVAS_COLOR,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            //step 3
            NeumorphicContainer(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(4.0),
              child: CircleAvatar(
                child: index > 1
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 24.0,
                      )
                    : SizedBox.shrink(),
                backgroundColor:
                    index > 1 ? MyColors.PRIMARY_COLOR : MyColors.CANVAS_COLOR,
              ),
            ),
          ],
        ),
        //text
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //step 1
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //text
                Text(
                  'Step 1',
                  style: textTheme.headline5,
                ),
                Text(
                  'Personal Info',
                  style: textTheme.bodyText2,
                )
              ],
            ),
            //step 2
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //text
                Text(
                  'Step 2',
                  style: textTheme.headline5.copyWith(
                    color: index > 0
                        ? MyColors.FONT_MAIN_COLOR
                        : MyColors.FONT_LIGHT_COLOR,
                  ),
                ),
                Text(
                  'Contact Info',
                  style: textTheme.bodyText2,
                )
              ],
            ),
            //step 3
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //text
                Text(
                  'Step 3',
                  style: textTheme.headline5.copyWith(
                    color: index > 1
                        ? MyColors.FONT_MAIN_COLOR
                        : MyColors.FONT_LIGHT_COLOR,
                  ),
                ),
                Text(
                  'Verification',
                  style: textTheme.bodyText2,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
