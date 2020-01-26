import 'package:bmi/constants.dart';
import 'package:bmi/components/reuse.dart';
import 'package:flutter/material.dart';
import 'package:bmi/CalculatorBrain.dart';
import 'package:bmi/components/BottomButton.dart';

// class Resultful extends StatefulWidget {
//    Result({this.bmi,this.bmiexplain,this.bmiText});
//   final String bmi;
//   final String bmiText;
//   final String bmiexplain;
//   @override
//   _ResultState createState() => _ResultState();
// }

// class _ResultState extends State<Result> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('BMI Calculator'),
//         centerTitle: true,
//       ),
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: Center(
//               child: Text(
//                 'Your BMI is',
//                 style: kNumberStyle,
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 6,
//             child: Reuse(
//               colour: kActive,
//               cardChild: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Text(
//                     'g',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         color: Colors.green,
//                         fontSize: 40,
//                         fontWeight: FontWeight.w300),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Text(
//                     'g',
//                     style:
//                         TextStyle(fontSize: 150, fontWeight: FontWeight.w800),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 18.0, right: 18),
//                     child: Align(
//                       child: Text(
//                         'You have higher than normal body weight try to excercise more.',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: 24,
//                           fontWeight: FontWeight.w300,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // GestureDetector(
//           //   onTap: () {
//           //     Navigator.pop(context);
//           //   },
//           //   child: Container(
//           //     child: Center(
//           //       child: Text(
//           //         'RECALCULATE YOUR BMI',
//           //         style: TextStyle(
//           //           fontSize: 22,
//           //           fontWeight: FontWeight.w400,
//           //         ),
//           //       ),
//           //     ),
//           //     color: Color(0xFFE35355),
//           //     margin: EdgeInsets.only(top: 10),
//           //     padding: EdgeInsets.only(bottom: 10),
//           //     height: kBottom,
//           //     width: double.infinity,
//           //   ),
//           // ),
//           BottomButton(
//             buttonText: 'RECALCULATE',
//             onClik: () {
//               Navigator.pop(context);
//             },
//           ),
//           // GestureDetector(
//           //   onTap: () {
//           //     Navigator.pop(context);
//           //     },
//           //   child: Container(
//           //     child: Center(
//           //       child: Text(
//           //         'RECALCULATE YOUR BMI',
//           //         style: TextStyle(
//           //           fontSize: 22,
//           //           fontWeight: FontWeight.w400,
//           //         ),
//           //       ),
//           //     ),
//           //     color: Color(0xFFE35355),
//           //     margin: EdgeInsets.only(top: 10),
//           //     padding: EdgeInsets.only(bottom: 10),
//           //     height: kBottom,
//           //     width: double.infinity,
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

class Result extends StatelessWidget {
  Result({this.bmi, this.bmiexplain, this.bmiText});
  final String bmi;
  final String bmiText;
  final String bmiexplain;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                'Your BMI is',
                style: kNumberStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Reuse(
              colour: kActive,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    bmiText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: bmiText=='NORMAL'?Colors.green:Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    bmi,
                    style:
                        TextStyle(fontSize: 150, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Align(
                      child: Text(
                        bmiexplain,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child: Container(
          //     child: Center(
          //       child: Text(
          //         'RECALCULATE YOUR BMI',
          //         style: TextStyle(
          //           fontSize: 22,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ),
          //     color: Color(0xFFE35355),
          //     margin: EdgeInsets.only(top: 10),
          //     padding: EdgeInsets.only(bottom: 10),
          //     height: kBottom,
          //     width: double.infinity,
          //   ),
          // ),
          BottomButton(
            buttonText: 'RECALCULATE',
            onClik: () {
              Navigator.pop(context);
            },
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.pop(context);
          //     },
          //   child: Container(
          //     child: Center(
          //       child: Text(
          //         'RECALCULATE YOUR BMI',
          //         style: TextStyle(
          //           fontSize: 22,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ),
          //     color: Color(0xFFE35355),
          //     margin: EdgeInsets.only(top: 10),
          //     padding: EdgeInsets.only(bottom: 10),
          //     height: kBottom,
          //     width: double.infinity,
          //   ),
          // ),
        ],
      ),
    );
  }
}
