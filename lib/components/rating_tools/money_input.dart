import 'package:flutter/material.dart';
import 'package:moneytextformfield/moneytextformfield.dart';

class MoneyInput extends StatefulWidget {
  @override
  _MoneyInputState createState() => _MoneyInputState();
}

class _MoneyInputState extends State<MoneyInput> {
  TextEditingController longCtrl = TextEditingController();
  TextEditingController compactCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle _ts = TextStyle(fontSize: 26.0);

    return MoneyTextFormField(
      settings: MoneyTextFormFieldSettings(
          controller: longCtrl,
          moneyFormatSettings: MoneyFormatSettings(
              currencySymbol: '\$',
              displayFormat: MoneyDisplayFormat.symbolOnRight),
          appearanceSettings: AppearanceSettings(
              padding: EdgeInsets.all(15.0),
              labelText: 'Tip percentage: 0.20',
              labelStyle: _ts,
              inputStyle: _ts.copyWith(color: Colors.orange),
              formattedStyle: _ts.copyWith(color: Colors.blue))),
    );
  }
}
