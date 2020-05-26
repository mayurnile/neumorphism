import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/service.dart';

import '../constants/assets.dart';
import '../constants/colors.dart';

import '../widgets/neumorphic_container.dart';

class HomeScreen extends StatelessWidget {
  final services = [
    Service(
      title: 'Dry Clean',
      image: Assets.DRY_CLEAN,
    ),
    Service(
      title: 'Iron',
      image: Assets.IRON,
    ),
    Service(
      title: 'Wash',
      image: Assets.WASH,
    ),
  ];

  final promotions = [
    NeumorphicContainer(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.symmetric(
        horizontal : 48.0,
        vertical: 36.0,
      ),
      borderRadius: 12.0,
      child: Text(
        'Banner Here',
        style: GoogleFonts.quicksand(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: MyColors.FONT_MAIN_COLOR,
        ),
      ),
    ),
    NeumorphicContainer(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.symmetric(
        horizontal : 48.0,
        vertical: 36.0,
      ),
      borderRadius: 12.0,
      child: Text(
        'Banner Here',
        style: GoogleFonts.quicksand(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: MyColors.FONT_MAIN_COLOR,
        ),
      ),
    ),
    NeumorphicContainer(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.symmetric(
        horizontal : 48.0,
        vertical: 36.0,
      ),
      borderRadius: 12.0,
      child: Text(
        'Banner Here',
        style: GoogleFonts.quicksand(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: MyColors.FONT_MAIN_COLOR,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //custom appbar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: screenSize.height * 0.03,
                    child: FlatButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(0.0),
                      child: Image.asset(
                        Assets.MENU_ICON,
                        fit: BoxFit.cover,
                        height: screenSize.height * 0.03,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: screenSize.height * 0.03,
                    child: FlatButton(
                      onPressed: () {},
                      padding: const EdgeInsets.all(0.0),
                      child: Transform.translate(
                        offset: Offset(0.0, 10.0),
                        child: Image.asset(
                          Assets.USER_ICON,
                          fit: BoxFit.cover,
                          color: MyColors.FONT_MAIN_COLOR,
                          height: screenSize.height * 0.035,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //welcome text
              Text(
                'Welcome To\nDhobilite !',
                style: textTheme.headline1,
              ),
              //services
              NeumorphicContainer(
                margin: const EdgeInsets.all(8.0),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                borderRadius: 12.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //heading text
                    Text(
                      'choose the laundry service, which you are interested in today !',
                      style: textTheme.bodyText1,
                    ),
                    //services
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Flexible(
                          child: ServiceItem(services[0]),
                        ),
                        Flexible(
                          child: ServiceItem(services[1]),
                        ),
                        Flexible(
                          child: ServiceItem(services[2]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //spacing
              SizedBox(height: 12.0),
              //promotions heading
              Text(
                'Promotions',
                style: textTheme.headline2.copyWith(
                  fontSize: 24.0,
                ),
              ),
              //promotions
              SizedBox(
                height: screenSize.height * 0.15,
                width: screenSize.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: promotions.length,
                  itemBuilder: (ctx,index) => promotions[index],
                ),
              ),
              //spacing
              SizedBox(height: 12.0),
              //order again heading
              Text(
                'Order Again',
                style: textTheme.headline2.copyWith(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final Service service;

  ServiceItem(this.service);

  @override
  Widget build(BuildContext context) {
    return NeumorphicContainer(
      width: MediaQuery.of(context).size.width * 0.28,
      margin: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 12.0,
      ),
      padding: const EdgeInsets.all(12.0),
      borderRadius: 12.0,
      child: Column(
        children: <Widget>[
          Image.asset(
            service.image,
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          SizedBox(
            height: 8.0,
          ),
          FittedBox(
            child: Text(
              service.title,
              maxLines: 1,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
