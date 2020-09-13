import 'package:flutter/material.dart';

class BndBox extends StatelessWidget {
  final List<dynamic> results;
  final int previewH;
  final int previewW;
  final double screenH;
  final double screenW;

  BndBox(
    this.results,
    this.previewH,
    this.previewW,
    this.screenH,
    this.screenW,
  );

  @override
  Widget build(BuildContext context) {
    List<Widget> _renderBoxes() {
      return results.map((re) {
        return Text(
          "${re["label"]} ${(re["confidence"] * 100).toStringAsFixed(0)}%",
          style: TextStyle(
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? Color.fromRGBO(255, 0, 0, 0.9)
                : Color.fromRGBO(37, 213, 253, 0.9),
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        );
      }).toList();
    }

    return Stack(children: [
      Card(
        color: Color.fromRGBO(0, 0, 0, 0.05),
        child: ListView(
          children: _renderBoxes(),
        ),
      ),
      if (results.length > 0)
        Center(
          child: Card(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            child: Text(
              "${results[0]["label"]} ${(results[0]["confidence"] * 100).toStringAsFixed(0)}%",
              style: TextStyle(
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? Color.fromRGBO(255, 0, 0, 1.0)
                        : Color.fromRGBO(37, 213, 253, 1.0),
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
    ]);
  }
}
