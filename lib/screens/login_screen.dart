import 'package:flutter/material.dart';
import 'package:neu_dhobi/widgets/neumorphic_container.dart';

import '../constants/colors.dart';
import '../constants/assets.dart';
import '../constants/routes.dart';

import '../widgets/app_name.dart';
import '../widgets/app_logo.dart';
import '../widgets/input_field.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SizedBox(
            height: screenSize.height -
                MediaQuery.of(context).padding.top -
                MediaQuery.of(context).padding.bottom -
                12.0,
            width: screenSize.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //app logo
                AppLogo(),
                //app Name
                AppName(),
                //spacing
                SizedBox(height: 52.0 * textScaleFactor),
                //email input field
                InputField(
                  icon: Icons.email,
                  label: 'email',
                  obscureText: false,
                ),
                //spacing
                SizedBox(height: 36.0 * textScaleFactor),
                //passwod input field
                InputField(
                  icon: Icons.lock,
                  label: 'password',
                  obscureText: true,
                ),
                //spacing
                SizedBox(height: 42.0 * textScaleFactor),
                //actions row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //forget password button
                      Flexible(
                        child: FlatButton(
                          onPressed: () {},
                          padding: const EdgeInsets.all(0),
                          child: FittedBox(
                            child: Text(
                              'forget password ?',
                              style: textTheme.button.copyWith(
                                fontWeight: FontWeight.w300,
                                color: MyColors.FONT_LIGHT_COLOR,
                                fontSize: 18.0,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //spacing
                      SizedBox(width: 16.0),
                      //login button
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacementNamed(
                            Routes.HOME_SCREEN,
                          );
                        },
                        child: NeumorphicContainer(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 42.0,
                            vertical: 16.0,
                          ),
                          borderRadius: 12.0,
                          child: Text(
                            'login',
                            style: textTheme.button,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //spacing
                SizedBox(height: 42.0 * textScaleFactor),
                //other login options
                Column(
                  children: <Widget>[
                    Text(
                      'or login using',
                      style: textTheme.bodyText2,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        NeumorphicContainer(
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.all(12.0),
                          borderRadius: 12.0,
                          child: Image.asset(
                            Assets.GOOGLE_LOGO,
                            height: screenSize.height * 0.05,
                          ),
                        ),
                        NeumorphicContainer(
                          margin: const EdgeInsets.all(8.0),
                          padding: const EdgeInsets.all(12.0),
                          borderRadius: 12.0,
                          child: Image.asset(
                            Assets.FACEBOOK_LOGO,
                            height: screenSize.height * 0.05,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //spacing
                Spacer(),
                //redirecting to signup form
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () => Navigator.of(context)
                        .pushReplacementNamed(Routes.SIGNUP_SCREEN),
                    child: Text.rich(
                      TextSpan(
                        text: 'Don\'t Have an Account ? ',
                        style: textTheme.bodyText1,
                        children: [
                          TextSpan(
                            text: 'Signup',
                            style: textTheme.button.copyWith(
                              color: MyColors.FONT_MAIN_COLOR,
                              fontSize: 22.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
