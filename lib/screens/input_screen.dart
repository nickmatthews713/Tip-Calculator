import 'package:flutter/material.dart';
import 'package:tipcalculator/components/rating_tools/five_button_row.dart';
import 'package:tipcalculator/components/rating_tools/money_input.dart';
import 'package:tipcalculator/utilities/constants.dart';

import '../components/score_card.dart';
import '../services/tip_score.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TipScore score = new TipScore(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Tip Calculator",
          style: kAppBarText,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ScoreCard(
                description: "Bill Amount",
                ratingTool: MoneyInput(),
              ),
              ScoreCard(
                description: "Service Rating",
                ratingTool: FiveButtonRow(
                  callbackScore: (toSubtract, toAdd) {
                    score.subtractFromScore(toSubtract);
                    score.addToScore(toAdd);
                    print(score.getScore().toString());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
