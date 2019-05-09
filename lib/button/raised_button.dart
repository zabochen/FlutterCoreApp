import 'package:flutter/material.dart';

class MyRaisedButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyRaisedButton> {
  String _appBarTitle = "My Raised Button";
  String _someText = "Some Text";

  void _onPressedButton() {
    setState(() {
      _someText = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: Container(
          padding: EdgeInsets.all(40.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  _someText,
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: RaisedButton(
                    padding: EdgeInsets.all(20.0),
                    onPressed: () {
                      _onPressedButton();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        "Click me",
                        style: TextStyle(
                            fontSize: 28.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
