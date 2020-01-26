import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';


class SexName extends StatelessWidget {
  final IconData symbol;
  final String name;
  SexName({@required this.symbol, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          symbol,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          name,
          style:kBuildText,
        )
      ],
    );
  }
}
