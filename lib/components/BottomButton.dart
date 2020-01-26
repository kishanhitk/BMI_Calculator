
import 'package:flutter/material.dart';
import 'package:bmi/constants.dart';


class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.onClik});
  final String buttonText;
  final Function onClik;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onClik,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        color: Color(0xFFE35355),
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 10),
        height: kBottom,
        width: double.infinity,
      ),
    );
  }
}