import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required int height, required int weight})
      : _weight = weight,
        _height = height;
  final int _height;
  final int _weight;
  double _bmi = 0.0;
  final Map<String, String> _result = {};

  String _calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, String> getResult() {
    _result['bmi'] = _calculateBMI();
    if (_bmi >= 25) {
      _result['resultText'] = 'OVERWEIGHT';
      _result['interpretation'] =
          'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      _result['resultText'] = 'NORMAL';
      _result['interpretation'] = 'You have a normal body weight. Good job!';
    } else {
      _result['resultText'] = 'UNDERWEIGHT';
      _result['interpretation'] =
          'You have a lower than normal body weight. You can eat a bit more.';
    }
    return _result;
  }
}
