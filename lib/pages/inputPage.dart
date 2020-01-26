import 'package:bmi/CalculatorBrain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/components/reuse.dart';
import 'package:bmi/components/sexname.dart';
import 'package:bmi/constants.dart';
import 'resultPage.dart';
import 'package:bmi/components/IconButton.dart';
import 'package:bmi/components/BottomButton.dart';

enum Gender { male, female }
int height = 180;
int weight = 50;
int age = 18;

Gender g;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuse(
                    onPress: () {
                      setState(() {
                        g = Gender.male;
                      });
                    },
                    colour: g == Gender.male ? kActive : kInactive,
                    cardChild: SexName(
                      name: 'MALE',
                      symbol: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: Reuse(
                    onPress: () {
                      setState(() {
                        g = Gender.female;
                      });
                    },
                    colour: g == Gender.female ? kActive : kInactive,
                    cardChild: SexName(
                      name: 'FEMALE',
                      symbol: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuse(
                colour: kActive,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT', style: kBuildText),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: kNumberStyle),
                        Text('cm', style: kBuildText),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xFFE35355),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                          overlayColor: Color(0x26E35355),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            print(newValue);
                            height = newValue.toInt();
                          });
                        },
                        min: 120.00,
                        max: 220.00,
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Reuse(
                    colour: kActive,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('WEIGHT', style: kBuildText),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButtonMy(
                              symbol: FontAwesomeIcons.minus,
                              operation: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButtonMy(
                              symbol: FontAwesomeIcons.plus,
                              operation: () {
                                setState(
                                  () {
                                    weight++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Reuse(
                    colour: kActive,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('AGE', style: kBuildText),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButtonMy(
                              symbol: FontAwesomeIcons.minus,
                              operation: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButtonMy(
                              symbol: FontAwesomeIcons.plus,
                              operation: () {
                                setState(
                                  () {
                                    age++;
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // BottomButton(
          //   buttonText: 'CALCULATE MY BMI',
          //   onClickk: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));
          //   },
          // ),

          BottomButton(
            buttonText: 'CALCULATE YOUR BMI',
            onClik: () {
              CalculatorBrain calc =CalculatorBrain(height: height,weight: weight);
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Result(bmi: calc.calc(),bmiexplain: calc.bmiexplain(),bmiText: calc.bmitext(),)));
            },
          )
        ],
      ),
    );
  }
}

// class BottomButton extends StatelessWidget {
//   BottomButton({@required this.buttonText, @required this.onClik});
//   final String buttonText;
//   final Function onClik;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap:onClik,
//       child: Container(
//         child: Center(
//           child: Text(
//             buttonText,
//             style: TextStyle(
//               fontSize: 22,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ),
//         color: Color(0xFFE35355),
//         margin: EdgeInsets.only(top: 10),
//         padding: EdgeInsets.only(bottom: 10),
//         height: kBottom,
//         width: double.infinity,
//       ),
//     );
//   }
// }

// class IconButtonMy extends StatelessWidget {
//   IconButtonMy({this.symbol, this.operation});
//   final IconData symbol;
//   final Function operation;
//   @override
//   Widget build(BuildContext context) {
//     return RawMaterialButton(
//       elevation: 0,
//       constraints: BoxConstraints.tightFor(height: 56, width: 56),
//       child: Icon(symbol),
//       onPressed: operation,
//       shape: CircleBorder(),
//       fillColor: Color(0xFF4C4F5E),
//     );
//   }
// }
