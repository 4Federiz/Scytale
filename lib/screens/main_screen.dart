import 'package:flutter/material.dart';
import 'package:scytale/widgets/text_widget.dart';
import 'package:flutter_animation_set/widget/transition_animations.dart';
import 'package:scytale/widgets/toggle_switch.dart';
import 'package:scytale/constants.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String message, key;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 5,
                  ),
                  YYPulse(),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: TextField(
                      decoration: kTextFieldoDecoration.copyWith(
                          hintText: 'Insert message here.'),
                      readOnly: false,
                      onChanged: (v) {
                        message = v;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: TextField(
                      decoration: kTextFieldoDecoration.copyWith(
                          hintText: 'Insert key here.'),
                      readOnly: false,
                      onChanged: (v) {
                        key = v;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TogggleSwitch(
                    keey: this.key,
                    string: this.message,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            TextFieldo(isReadOnly: true),
          ],
        ),
      ),
    );
  }
}
