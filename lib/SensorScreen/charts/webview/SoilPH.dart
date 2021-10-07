import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoilPH extends StatefulWidget {
  @override
  SoilPHState createState() => SoilPHState();
}

class SoilPHState extends State<SoilPH> {
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
          'https://thingspeak.com/channels/960293/charts/3?bgcolor=%23ffffff&color=%23d62020&dynamic=true&max=14&results=60&timescale=10&title=Soil+PH&type=column&yaxismax=15&yaxismin=0',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
