import 'package:api_example_app/SensorScreen/charts/webview/SoilPH.dart';
import 'package:flutter/material.dart';

class SoilPatCard extends StatelessWidget {
  const SoilPatCard({
    Key key,
    @required this.size,
    this.icon,
    this.title,
    this.richText,
    this.subtitle,
  }) : super(key: key);

  final Size size;
  final IconData icon;
  final String title;
  final String subtitle;
  final String richText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0),
      width: 600,
      height: 400,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: Colors.white,
        elevation: 10,
        child: Container(
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SoilPH(),
            ],
          ),
        ),
      ),
    );
  }
}
