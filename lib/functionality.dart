import 'dart:math';

class Functionality {
  Functionality({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI is more than 25, it falls within the overweight range. Obesity is a complex disease involving an excessive amount of body fat. Try to do more Excercise.';
    } else if (_bmi > 18.5) {
      return 'Your BMI is between 18.5 to 25, it falls within the normal. You are totally Healthy !';
    } else {
      return 'Your BMI is less than 18.5, it falls within the underweight range. An underweight person is a person whose body weight is considered too low to be healthy. Try to Eat more.';
    }
  }

  void reset() {}
}
