// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class GraphScreen extends StatefulWidget {
  @override
  _GraphScreenState createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  final List<Feature> features1 = [
    Feature(
      title: "Greyhouse",
      color: Colors.red,
      data: [4.8 / 5, 3 / 5, 3.7 / 5, 4.9 / 5, 4.2 / 5],
    ),
    Feature(
      title: "Union Club Hotel",
      color: Colors.orange,
      data: [4.3 / 5, 3.3 / 5, 3.2 / 5, 4.9 / 5, 2.0 / 5],
    ),
    Feature(
      title: "Lawson",
      color: Colors.yellow,
      data: [1.6 / 5, 4.2 / 5, 4.9 / 5, 2.2 / 5, 4.8 / 5],
    ),
  ];
  final List<Feature> features2 = [
    Feature(
      title: "Pete's Za",
      color: Colors.red,
      data: [2.92 / 9.5, 4.08 / 9.5, 4.16 / 9.5, 3.9 / 9.5, 2.58 / 9.5],
    ),
    Feature(
      title: "Tarkington",
      color: Colors.orange,
      data: [3.65 / 9.5, 2.9 / 9.5, 3.38 / 9.5, 3.66 / 9.5, 3.93 / 9.5],
    ),
    Feature(
      title: "Harry's",
      color: Colors.yellow,
      data: [2.6 / 9.5, 3.8 / 9.5, 4.2 / 9.5, 2.2 / 9.5, 2.6 / 9.5],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 500,
                ),
                LineGraph(
                  features: features1,
                  size: Size(520, 400),
                  labelX: [
                    '2023-01-05',
                    '2023-01-10',
                    '2023-01-15',
                    '2023-01-20',
                    '2023-01-25'
                  ],
                  labelY: ['1', '2', '3', '4', '5'],
                  showDescription: true,
                  graphColor: Colors.black87,
                ),
                SizedBox(
                  height: 50,
                ),
                LineGraph(
                  features: features2,
                  size: Size(520, 400),
                  labelX: [
                    '2023-01-05',
                    '2023-01-10',
                    '2023-01-15',
                    '2023-01-20',
                    '2023-01-25'
                  ],
                  labelY: ['1', '2', '3', '4', '5'],
                  showDescription: true,
                  graphColor: Colors.black87,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 150,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 64.0),
                  child: Text(
                    "Most Sanitary Places To Go",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  width: 350,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 64.0),
                  child: Text(
                    "Least Sanitary Places To Go",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
