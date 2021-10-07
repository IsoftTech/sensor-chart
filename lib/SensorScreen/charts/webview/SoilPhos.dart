import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SoilPhos extends StatefulWidget {
  @override
  SoilPhosState createState() => SoilPhosState();
}

class SoilPhosState extends State<SoilPhos> {
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
          'https://thingspeak.com/channels/960293/charts/6?bgcolor=%23ffffff&color=%23d62020&dynamic=true&results=60&title=Soil+Phosphorus++mg%2Fkg&type=line',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
