import 'package:flutter/material.dart';
import 'package:tipcalculator/components/rating_tools/money_input.dart';
import 'package:tipcalculator/components/value_card.dart';
import 'package:tipcalculator/services/card_library.dart';
import 'package:tipcalculator/utilities/constants.dart';

import '../services/tip_score.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {

  List<ValueCard> cardList = List();

  @override
  void initState() {
    super.initState();
    //TODO: add ValueCard(s) to cardList
    cardList.add(CardLibrary.library['service_rating']);
  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Bill Amount",
                  style: kCardText,
                ),
                MoneyInput()
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: cardList
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: Return all scores in cardList to 0??
    super.dispose();
  }
}
