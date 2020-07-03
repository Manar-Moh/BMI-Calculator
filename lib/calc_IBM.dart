import 'dart:math';

class CalcIBM {
  CalcIBM({this.weight, this.height});

  final int weight;
  final int height;
  double _ibm;

  String calcIbm() {
    _ibm = (weight / pow(height / 100, 2));
    return _ibm.toStringAsFixed(1);
  }

  String textResult() {
    if (_ibm >= 25) {
      return 'OverWeight';
    } else if (_ibm > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String adviseResult() {
    if (_ibm >= 25) {
      return 'You Have A Higher Than Normal Body Weight . Try To Exercise More .';
    } else if (_ibm > 18.5) {
      return 'You Have A Normal Body Weight . Good Job . ';
    } else {
      return 'You Have A Lower Than Normal Body Weight . You Can Eat A Bit More .';
    }
  }
}
