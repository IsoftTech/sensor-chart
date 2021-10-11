import 'package:api_example_app/LandingScreen/components/Cards.dart';
import 'package:api_example_app/SensorScreen/charts/GasChart.dart';
import 'package:api_example_app/SensorScreen/charts/HumChart.dart';
import 'package:api_example_app/SensorScreen/charts/MoisChart.dart';
import 'package:api_example_app/SensorScreen/charts/NurChart.dart';
import 'package:api_example_app/SensorScreen/charts/PhChart.dart';
import 'package:api_example_app/SensorScreen/charts/SoilPatChart.dart';
import 'package:api_example_app/SensorScreen/charts/SoilPhosChart.dart';
import 'package:api_example_app/SensorScreen/charts/TemChart.dart';
import 'package:api_example_app/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:api_example_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreenBody extends StatefulWidget with NavigationStates {
  @override
  _LandingScreenBodyState createState() => _LandingScreenBodyState();
}

class _LandingScreenBodyState extends State<LandingScreenBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: size.height * 0.1),
            Center(
              child: Text(
                'ngDAQ-TD4PAI',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Center(
              child: Text(
                'Real-time Smart Environment Monitoring System including Soil Parameters',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: kDarkGreyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.temperatureHigh,
                  title: 'Tem',
                  subtitle: '33C',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new TemChart()));
                  },
                ),
                CardsParent(
                  size: size,
                  title: 'Light ',
                  subtitle: 'Intensity',
                  icon: FontAwesomeIcons.lightbulb,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new HumChart()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.hourglass,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new MoisChart()));
                  },
                  title: 'Mos',
                  subtitle: '40',
                ),
                CardsParent(
                  size: size,
                  title: 'PH ',
                  subtitle: '14',
                  icon: FontAwesomeIcons.phabricator,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => new PhChart()));
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.leaf,
                  title: 'Nur',
                  subtitle: 'Good',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new NurChart()));
                  },
                ),
                CardsParent(
                  size: size,
                  title: 'Soil ',
                  subtitle: 'Cond',
                  icon: FontAwesomeIcons.solidLifeRing,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new GasChart()));
                  },
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardsParent(
                  size: size,
                  icon: FontAwesomeIcons.watchmanMonitoring,
                  title: 'Soil\nPhos',
                  subtitle: 'Good',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new SoilPhosChart()));
                  },
                ),
                CardsParent(
                  size: size,
                  title: 'Soil K',
                  subtitle: 'Good',
                  icon: FontAwesomeIcons.confluence,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => new SoilPatChart()));
                  },
                ),
              ],
            ),

            SizedBox(height: size.height * 0.2),
            // DefaultButton(
            //   size: size,
            //   title: "Next",
            //   press: () {
            //     Navigator.push(
            //       context,
            //       CupertinoPageRoute(
            //         builder: (context) => SensorScreen(),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
