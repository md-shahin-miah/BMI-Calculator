import 'dart:math';

class CalculationHelper {
  late  int _height;
  late int _weight;


  CalculationHelper({required int height,required int weight}) {
    _height=height;
    _weight=weight;
  }

  late double _bmi;

  String calculateBMI() {
    _bmi = (_weight! / pow(_height! / 100, 2))!;
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over_weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under_weight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body _weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body _weight. Good job!';
    } else {
      return 'You have a lower than normal body _weight. You can eat a bit more.';
    }
  }


}