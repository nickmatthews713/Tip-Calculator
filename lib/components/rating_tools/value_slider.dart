import 'package:flutter/material.dart';
import 'package:tipcalculator/services/tip_score.dart';
import 'package:tipcalculator/utilities/constants.dart';

class ValueSlider extends StatefulWidget {
  final TipScore tipScore;

  ValueSlider({this.tipScore});

  @override
  _ValueSliderState createState() => _ValueSliderState();
}

class _ValueSliderState extends State<ValueSlider> {
  int displayedValue = 5;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: SliderTheme(
            data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Colors.grey,
                activeTrackColor: kColorPrimary,
                thumbColor: kAccentColor,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 25.0),
                trackHeight: 5.0),
            child: Slider(
              value: displayedValue.toDouble(),
              min: 0.0,
              max: 10.0,
              onChanged: (double val) {
                setState(() {
                  displayedValue = val.toInt();
                });
                widget.tipScore.setScore(displayedValue.toDouble());
                print(widget.tipScore.hashCode);
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            displayedValue.toString(),
            textAlign: TextAlign.center,
            style: kCardText,
          ),
        ),
      ],
    );
  }
}
