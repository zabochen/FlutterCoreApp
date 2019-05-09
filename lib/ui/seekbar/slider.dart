import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MySlider> {
  var _appBarTitle = "Slider";

  double _value = 0.0;

  void _setValue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text(
                "Value: ${(_value * 100).round()}",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Slider(
              value: _value,
              onChanged: _setValue,
            )
          ],
        ),
      ),
    );
  }
}
