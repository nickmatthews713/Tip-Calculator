import 'package:flutter/material.dart';
import 'package:tipcalculator/services/tip_score.dart';
import '../utilities/constants.dart';

class ValueCard extends StatefulWidget {

  final Widget valueSelector;
  final String cardDesc;
  final TipScore tipScore;

  ValueCard({
    @required this.valueSelector,
    @required this.cardDesc,
    @required this.tipScore,
  });

  @override
  _ValueCardState createState() => _ValueCardState();
}

class _ValueCardState extends State<ValueCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[600],
            blurRadius: 3.5,
            spreadRadius: 0.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: 15.0),
      height: 200.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            widget.cardDesc,
            textAlign: TextAlign.center,
            style: kCardText,
          ),
          widget.valueSelector,
        ],
      ),
    );
  }
}
