import 'package:flutter/material.dart';
import 'package:scytale/constants.dart';
import 'package:toggle_switch/toggle_switch.dart';

class TogggleSwitch extends StatefulWidget {
  final String string;
  final String keey;

  TogggleSwitch({this.string, this.keey});

  @override
  _TogggleSwitchState createState() => _TogggleSwitchState();
}

class _TogggleSwitchState extends State<TogggleSwitch> {
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 90.0,
      cornerRadius: 10,
      activeBgColor: kActiveColour,
      activeTextColor: kActiveTextColour,
      inactiveTextColor: kActiveTextColour,
      inactiveBgColor: kInactiveTextColour,
      labels: ['', ''],
      icons: [kLocked, kUnlocked],
      onToggle: (i) {
        ///TODO: change value of text_widget
        print('User selected $i');
        if (i == 0) {
//          result = Brain.encryptedMessage();
        } else if (i == 1) {
          //
        }
      },
    );
  }
}
