import 'package:flutter/material.dart';
import 'package:flutter_core_app/ui/button/icon_button.dart';
import 'package:flutter_core_app/ui/button/raised_button.dart';
import 'package:flutter_core_app/ui/checkbox/checkbox.dart';
import 'package:flutter_core_app/ui/radio/radio.dart';
import 'package:flutter_core_app/ui/text/edit_text.dart';

import 'ui/button/flat_button.dart';

void main() {
  // Text
  MyEditText editText = MyEditText();

  // Button
  MyRaisedButton raisenButton = MyRaisedButton();
  MyIconButton iconButton = MyIconButton();
  MyFlatButton flatButton = MyFlatButton();

  // Checkbox
  MyCheckbox checkbox = MyCheckbox();

  // Radio
  MyRadioButton radioButton = MyRadioButton();

  runApp(MaterialApp(
    home: editText,
  ));
}
