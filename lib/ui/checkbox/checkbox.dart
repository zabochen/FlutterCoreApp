import 'package:flutter/material.dart';

class MyCheckbox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyCheckbox> {
  String _appBarTitle = "CheckBox";

  bool _value1 = false;
  bool _value2 = false;

  void _value1Changed(bool value) {
    setState(() {
      _value1 = value;
    });
  }

  void _value2Changed(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Checkbox(
                value: _value1,
                onChanged: (bool value) {
                  _value1Changed(value);
                },
              ),
              CheckboxListTile(
                value: _value2,
                onChanged: _value2Changed,
                title: Text("Checkbox Title"),
                subtitle: Text("Checkbox Subtitle"),
                activeColor: Colors.red,
                secondary: Icon(Icons.android),
                controlAffinity: ListTileControlAffinity.leading,
              )
            ],
          ),
        ),
      ),
    );
  }
}
