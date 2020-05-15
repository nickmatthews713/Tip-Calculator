import 'package:flutter/material.dart';

import '../services/tip_score.dart';
import '../utilities/constants.dart';

class ScoreCard extends StatelessWidget {
  final String description;
  final Widget ratingTool;
  final TipScore score;

  ScoreCard({
    @required this.description,
    @required this.ratingTool,
    this.score,
  });

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
            description,
            textAlign: TextAlign.center,
            style: kCardText,
          ),
          ratingTool,
        ],
      ),
    );
  }
}
