import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoilHum extends StatefulWidget {
  @override
  SoilHumState createState() => SoilHumState();
}

class SoilHumState extends State<SoilHum> {
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
          'https://thingspeak.com/channels/960293/charts/8?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&title=Light+Intensity++lux&type=line',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
