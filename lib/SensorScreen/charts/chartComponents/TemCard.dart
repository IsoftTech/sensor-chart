import 'package:api_example_app/SensorScreen/charts/webview/SoilTem.dart';
import 'package:flutter/material.dart';
import 'package:api_example_app/constants.dart';

class TemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      width: 500,
      height: 400,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: LineGraphDarkBlue,
        child: Container(
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SoilTem(),
            ],
          ),
        ),
      ),
    );
  }
}
