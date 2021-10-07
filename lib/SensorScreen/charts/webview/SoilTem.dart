import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoilTem extends StatefulWidget {
  @override
  SoilTemState createState() => SoilTemState();
}

class SoilTemState extends State<SoilTem> {
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
          'https://thingspeak.com/channels/960293/charts/1?bgcolor=%23ffffff&color=%23d62020&dynamic=true&max=100&min=-5&results=60&timescale=10&title=Soil+Temperature++++++++%C2%B0C&type=line',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
