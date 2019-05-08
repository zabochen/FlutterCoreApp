import 'package:flutter/material.dart';

class MyIconButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyIconButton> {
  String _appBarTitle = "Icon Button";
  int _someValue = 0;

  void _add() {
    setState(() {
      _someValue++;
    });
  }

  void _remove() {
    setState(() {
      _someValue--;
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
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Value: $_someValue"),
              ),
              IconButton(
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.add),
                onPressed: _add,
              ),
              IconButton(
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.remove),
                onPressed: _remove,
              )
            ],
          ),
        ),
      ),
    );
  }
}
