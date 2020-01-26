import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight,this.height});
  final int weight;
  final int height;
  double _bmi;

  String calc (){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String bmitext(){
    if(_bmi>25)
    return 'OVERWEIGHT';
    else if(_bmi>18)
    return 'NORMAL';
    else
    return 'UNDERWEIGHT';

  }

    String bmiexplain(){
    if(_bmi>25)
    return 'Your body weight is more than normal considering your height. Contact a dietician and maintain your BMI in the range 18-25.';
    else if(_bmi>18)
    return 'Congratulation! Your BMI is completely normal. Keep it maintained.';
    else
    return 'Oh! You are underweight. Being underweight is as harmful as being overweight. You should contact your doctor. Try to maintain your BMI in the range 18-25.';

  }
}