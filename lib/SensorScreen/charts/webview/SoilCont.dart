import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoilCont extends StatefulWidget {
  @override
  SoilContState createState() => SoilContState();
}

class SoilContState extends State<SoilCont> {
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
          'https://thingspeak.com/channels/960293/charts/4?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&title=Soil+Conductivity++++us%2Fcm&type=line',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
