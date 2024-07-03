import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'OBESITY';
    } else if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'NORMAL WEIGHT';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'You have a higher than normal body weight. You can try exercising regularly to improve it.';
    } else if (_bmi >= 25) {
      return 'You have a slightly higher than normal body weight. Exercising daily helps a lot!';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. That\'s great!';
    } else {
      return 'You have a lower than normal body weight. Hope you are eating a balanced diet everyday!';
    }
  }
}
