import 'package:flutter/material.dart';
import 'package:tipcalculator/utilities/constants.dart';

import '../round_button.dart';

typedef void ScoreCallback(double subtract, double add);

class FiveButtonRow extends StatefulWidget {
  final ScoreCallback callbackScore;

  FiveButtonRow({@required this.callbackScore});

  @override
  _FiveButtonRowState createState() => _FiveButtonRowState();
}

class _FiveButtonRowState extends State<FiveButtonRow> {
  Color buttonOneColor = Colors.white;
  Color buttonTwoColor = Colors.white;
  Color buttonThreeColor = Colors.white;
  Color buttonFourColor = Colors.white;
  Color buttonFiveColor = Colors.white;

  double currentValue = 0;

  void resetButtonFill() {
    setState(() {
      buttonOneColor = Colors.white;
      buttonTwoColor = Colors.white;
      buttonThreeColor = Colors.white;
      buttonFourColor = Colors.white;
      buttonFiveColor = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RoundButton(
          onPressed: () {
            setState(() {
              resetButtonFill();
              buttonOneColor = Colors.red;
            });
            widget.callbackScore(currentValue, 1);
            currentValue = 1;
          },
          content: Text(
            "1",
            style: kRoundButtonText,
          ),
          borderColor: Colors.red,
          fillColor: buttonOneColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        RoundButton(
          onPressed: () {
            setState(() {
              resetButtonFill();
              buttonTwoColor = Colors.orange;
            });
            widget.callbackScore(currentValue, 2);
            currentValue = 2;
          },
          content: Text(
            "2",
            style: kRoundButtonText,
          ),
          borderColor: Colors.orange,
          fillColor: buttonTwoColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        RoundButton(
          onPressed: () {
            setState(() {
              resetButtonFill();
              buttonThreeColor = Colors.yellow;
            });
            widget.callbackScore(currentValue, 3);
            currentValue = 3;
          },
          content: Text(
            "3",
            style: kRoundButtonText,
          ),
          borderColor: Colors.yellow,
          fillColor: buttonThreeColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        RoundButton(
          onPressed: () {
            setState(() {
              resetButtonFill();
              buttonFourColor = Colors.blue;
            });
            widget.callbackScore(currentValue, 4);
            currentValue = 4;
          },
          content: Text(
            "4",
            style: kRoundButtonText,
          ),
          borderColor: Colors.blue,
          fillColor: buttonFourColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        RoundButton(
          onPressed: () {
            setState(() {
              resetButtonFill();
              buttonFiveColor = Colors.green;
            });
            widget.callbackScore(currentValue, 5);
            currentValue = 5;
          },
          content: Text(
            "5",
            style: kRoundButtonText,
          ),
          borderColor: Colors.green,
          fillColor: buttonFiveColor,
        ),
        SizedBox(
          width: 10.0,
        ),
      ],
    );
  }
}
