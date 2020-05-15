import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  RoundButton(
      {@required this.onPressed,
      @required this.content,
      @required this.borderColor,
      @required this.fillColor});

  final Function onPressed;
  final Widget content;
  final Color borderColor;
  final Color fillColor;

  @override
  _RoundButtonState createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: widget.onPressed,
      child: widget.content,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(width: 55.0, height: 55.0),
      shape: CircleBorder(
        side: BorderSide(color: widget.borderColor, width: 2.0),
      ),
      fillColor: widget.fillColor,
    );
    ;
  }
}
