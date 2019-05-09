import 'package:flutter/material.dart';

class MyRadioButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyRadioButton> {
  String _appBarTitle = "Radio Button";

  int _value1 = 0;
  int _value2 = 0;

  void _setValue1(int value) {
    setState(() {
      _value1 = value;
    });
  }

  void _setValue2(int value) => setState(() => _value2 = value);

  Widget getRadioList() {
    List radioList = List<Radio>();
    for (int i = 0; i < 3; i++) {
      radioList.add(Radio(
        value: i,
        groupValue: _value1,
        onChanged: _setValue1,
        activeColor: Colors.amber,
      ));
    }

    Column column = Column(
      children: radioList,
    );
    return column;
  }

  Widget getRadioTileList() {
    List<Widget> radioTileList = List();
    for (int i = 0; i < 3; i++) {
      radioTileList.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.cyan,
        title: Text("Title item: $i"),
        subtitle: Text("Subtitle item_$i"),
        controlAffinity: ListTileControlAffinity.leading,
        secondary: Icon(Icons.blur_circular),
      ));
    }

    Column column = Column(
      children: radioTileList,
    );
    return column;
  }

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
              Text("Radio Buttons:"),
              getRadioList(),
              getRadioTileList()
            ],
          ),
        ),
      ),
    );
  }
}
