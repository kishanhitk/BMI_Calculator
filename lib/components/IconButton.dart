import 'package:flutter/material.dart';



class IconButtonMy extends StatelessWidget {
  IconButtonMy({this.symbol, this.operation});
  final IconData symbol;
  final Function operation;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0,
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      child: Icon(symbol),
      onPressed: operation,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
