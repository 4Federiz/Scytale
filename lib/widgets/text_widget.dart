import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:scytale/constants.dart';

class TextFieldo extends StatefulWidget {
  bool isReadOnly;
  TextEditingController textController;

  TextFieldo({this.isReadOnly, this.textController});

  @override
  _TextFieldoState createState() => _TextFieldoState();
}

class _TextFieldoState extends State<TextFieldo> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: TextField(
        controller: widget.textController ?? null,
        decoration: kTextFieldoDecoration.copyWith(
            hintText: 'Tap to copy to Clipboard'),
        readOnly: widget.isReadOnly,
        onTap: () {
          ///TODO: if true, Implement Copy to clipboard.
          if (widget.isReadOnly) {
            print('Was tapped, implement copy here');
          }
        },
      ),
    );
  }
}
