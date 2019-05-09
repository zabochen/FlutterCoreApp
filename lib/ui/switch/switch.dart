import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MySwitch> {
  var _appBarTitle = "Switch";

  bool _value1 = true;
  bool _value2 = false;

  void _setValue1(bool value) {
    setState(() {
      _value1 = value;
    });
  }

  void _setValue2(bool value) => setState(() => _value2 = value);

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
            Text(
              "Switches:",
              style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
            Switch(
              value: _value1,
              onChanged: (bool value) {
                _setValue1(value);
              },
            ),
            SwitchListTile(
              value: _value2,
              onChanged: (bool value) => _setValue2(value),
              title: Text("Switch Title"),
              subtitle: Text("Switch Subtitle"),
              secondary: Icon(Icons.directions_bike),
            )
          ],
        ),
      ),
    );
  }
}
