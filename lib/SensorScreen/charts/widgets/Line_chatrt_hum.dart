import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:http/http.dart' as http;

// import 'package:http/http.dart' as http;

class LineChartHum extends StatefulWidget {
  // LineChartHum({Key? key}) : super(key: key);

  @override
  _LineChartHumState createState() => _LineChartHumState();
}

class _LineChartHumState extends State<LineChartHum> {
  @override
  void initState() {
    loadSensorData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.all(16),
              height: 300,
              child: SfCartesianChart(
                  zoomPanBehavior: ZoomPanBehavior(
                    //
                    enablePinching: true,
                    enableDoubleTapZooming: true,
                    enablePanning: true,
                    enableSelectionZooming: true,
                    enableMouseWheelZooming: true,
                  ),
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(text: 'Light Intensity'),
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <LineSeries<SensorData, String>>[
                    LineSeries<SensorData, String>(
                      dataSource: chartData,
                      xValueMapper: (SensorData sensors, _) =>
                          sensors.timeStamp.toString(),
                      yValueMapper: (SensorData sensors, _) =>
                          sensors.sensorValue,
                    )
                  ]))
        ],
      ),
    );
  }

  List<SensorData> chartData = [];
  Future loadSensorData() async {
    final jsonResponse = json.decode(/*toString()*/ await fetchApi());
    // print(jsonString);
    // print(jsonResponse);
    setState(() {
      for (Map i in jsonResponse['feeds']) {
        try {
          chartData.add(SensorData.fromJson(i));
        } catch (e) {}
      }
    });
  }
}

Future<String> fetchApi() async {
  var url =
      Uri.parse('https://api.thingspeak.com/channels/960293/field/8.json');
  http.Response response = await http.get(url);
  return response.body.toString();
}

Future<String> fetchUsers() async {
  var url =
      Uri.parse('https://api.thingspeak.com/channels/960293/fields/1.json');
  http.Response response = await http.get(url);
  print(response.body);
  return response.body.toString();
}

class SensorData {
  SensorData({
    this.timeStamp,
    this.sensorValue,
  });
  DateTime timeStamp;
  int sensorValue;

  factory SensorData.fromJson(Map<String, dynamic> json) {
    return SensorData(
      timeStamp: DateTime.parse(
        json['created_at'],
      ),
      sensorValue: double.parse(
              json['field8'].toString().replaceAll(RegExp('[.,].*'), ''))
          .toInt(),
    );
  }
}
