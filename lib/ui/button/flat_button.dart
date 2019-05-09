import 'package:flutter/material.dart';

class MyFlatButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyFlatButton> {
  String _appBarTitle = "Flat Button";
  String _someText = "Some Text";

  void _onPressed() {
    setState(() {
      _someText = DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_someText),
                FlatButton(
                  onPressed: _onPressed,
                  child: Text("Click me"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
