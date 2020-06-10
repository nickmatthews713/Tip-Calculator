import 'package:tipcalculator/components/rating_tools/five_button_row.dart';
import 'package:tipcalculator/components/rating_tools/value_slider.dart';
import 'package:tipcalculator/components/value_card.dart';
import 'package:tipcalculator/services/tip_score.dart';

class CardLibrary {
  static TipScore serviceRatingScore = TipScore(0);
  static TipScore foodRatingScore = TipScore(0);

  static Map<String, ValueCard> library = {
    'service_rating': ValueCard(
      tipScore: serviceRatingScore,
      cardDesc: 'Service Rating',
      valueSelector: FiveButtonRow(tipScore: serviceRatingScore),
    ),
    'food_rating': ValueCard(
      tipScore: foodRatingScore,
      cardDesc: "Food Rating",
      valueSelector: ValueSlider(tipScore: foodRatingScore),
    )
  };
}
