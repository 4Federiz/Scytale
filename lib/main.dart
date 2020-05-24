import 'package:flutter/material.dart';
import 'package:scytale/constants.dart';
import 'screens/main_screen.dart';

void main() => runApp(MyApp());

///TODO: No landscape mode and remove DEBUG banner.
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scytale',
      theme: ThemeData.dark().copyWith(
        accentColor: kActiveColour,
      ),
      home: MainScreen(),
    );
  }
}
