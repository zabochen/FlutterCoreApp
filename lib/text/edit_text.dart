import 'package:flutter/material.dart';

class MyEditText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}

class _State extends State<MyEditText> {
  String _appBarTitle = "Edit Text";
  String _someValue = '';

  void _onChange(String text) {
    setState(() => _someValue = 'Change: $text');
  }

  void _onSubmit(String text) {
    setState(() {
      _someValue = 'Submit: $_someValue';
    });
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
              Text('Value: $_someValue'),
              TextField(
                decoration: InputDecoration(
                    labelText: "Label Text",
                    hintText: "Hint",
                    icon: Icon(Icons.account_circle)),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              )
            ],
          ),
        ),
      ),
    );
  }
}
