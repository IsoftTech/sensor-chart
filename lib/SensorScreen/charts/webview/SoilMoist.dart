import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoilMoist extends StatefulWidget {
  @override
  SoilMoistState createState() => SoilMoistState();
}

class SoilMoistState extends State<SoilMoist> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          'https://thingspeak.com/channels/960293/charts/2?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&timescale=10&title=Soil+Moisture+++%25&type=bar',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
