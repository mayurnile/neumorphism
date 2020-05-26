import 'package:flutter/material.dart';

import '../constants/routes.dart';
import '../constants/colors.dart';

import '../widgets/app_name.dart';
import '../widgets/app_logo.dart';
import '../widgets/stepper.dart';
import '../widgets/input_field.dart';
import '../widgets/neumorphic_container.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  PageController _pageController;

  Size screenSize;
  TextTheme textTheme;
  double textScaleFactor;

  int currentPageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;
    textTheme = Theme.of(context).textTheme;
    textScaleFactor = MediaQuery.of(context).textScaleFactor;

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
            //welcome text
            Text(
              'Welcome aboard.',
              style: textTheme.headline4,
            ),
            //stepper widget
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: MyStepper(
                currentIndex: currentPageIndex,
              ),
            ),
            //spacing
            SizedBox(height: 12.0),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: BouncingScrollPhysics(),
                allowImplicitScrolling: false,
                reverse: false,
                children: <Widget>[
                  //first step
                  _buildStepOne(),
                  //second step
                  _buildStepTwo(),
                  //thirs step
                  _buildStepThree(),
                ],
              ),
            ),
            //redirecting to signup form
            Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () => Navigator.of(context)
                    .pushReplacementNamed(Routes.LOGIN_SCREEN),
                child: Text.rich(
                  TextSpan(
                    text: 'Already Have an Account ? ',
                    style: textTheme.bodyText1,
                    children: [
                      TextSpan(
                          text: 'Login',
                          style: textTheme.button.copyWith(
                            color: MyColors.FONT_MAIN_COLOR,
                            fontSize: 22.0,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }

  Widget _buildStepOne() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //name input field
        InputField(
          icon: Icons.person_pin,
          label: 'full name',
          obscureText: false,
        ),
        //spacing
        SizedBox(height: 36.0 * textScaleFactor),
        //email input field
        InputField(
          icon: Icons.email,
          label: 'email',
          obscureText: false,
        ),
        //spacing
        SizedBox(height: 36.0 * textScaleFactor),
        //password input field
        InputField(
          icon: Icons.lock,
          label: 'password',
          obscureText: true,
        ),
        //spacing
        SizedBox(height: 10.0 * textScaleFactor),
        //next page
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                _pageController.animateToPage(
                  1,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeInBack,
                );
                setState(() {
                  currentPageIndex = 1;
                });
              },
              child: NeumorphicContainer(
                padding: const EdgeInsets.symmetric(
                  horizontal: 42.0,
                  vertical: 16.0,
                ),
                borderRadius: 12.0,
                child: Text(
                  'next',
                  style: textTheme.button,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStepTwo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //name input field
        InputField(
          icon: Icons.phone,
          label: 'contact number',
          obscureText: false,
        ),
        //spacing
        SizedBox(height: 36.0 * textScaleFactor),
        //email input field
        InputField(
          icon: Icons.email,
          label: 'email',
          obscureText: false,
        ),
        //spacing
        SizedBox(height: 36.0 * textScaleFactor),
        //password input field
        InputField(
          icon: Icons.lock,
          label: 'password',
          obscureText: true,
        ),
        //spacing
        SizedBox(height: 10.0 * textScaleFactor),
        //next page
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                setState(() {
                  currentPageIndex = 2;
                  _pageController.animateToPage(
                    2,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInBack,
                  );
                });
              },
              child: NeumorphicContainer(
                padding: const EdgeInsets.symmetric(
                  horizontal: 42.0,
                  vertical: 16.0,
                ),
                borderRadius: 12.0,
                child: Text(
                  'next',
                  style: textTheme.button,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStepThree() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        //otp heading
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text(
            'enter OTP',
            style: textTheme.headline3,
          ),
        ),
        //name input field
        InputField(
          icon: Icons.code,
          label: 'OTP here',
          obscureText: false,
        ),
        //spacing
        SizedBox(height: 10.0 * textScaleFactor),
        //next page
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {},
              child: NeumorphicContainer(
                padding: const EdgeInsets.symmetric(
                  horizontal: 42.0,
                  vertical: 16.0,
                ),
                borderRadius: 12.0,
                child: Text(
                  'verify',
                  style: textTheme.button,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
