// calculator_logic.dart
class CalculatorLogic {
  String _input = "";
  String _calculated = "";
  String _operator = "";

  String get input => _input;
  String get calculated => _calculated;

  void clear() {
    _input = "";
    _calculated = "";
    _operator = "";
  }

  void handleOperator(String operator) {
    _calculated = _input;
    _input = "";
    _operator = operator;
  }

  void appendValue(String value) {
    _input += value;
  }

  void calculate() {
    double calc1 = double.parse(_input);
    double calc2 = double.parse(_calculated);
    switch (_operator) {
      case "+":
        _input = (calc2 + calc1).toString();
        break;
      case "-":
        _input = (calc2 - calc1).toString();
        break;
      case "%":
        _input = (calc2 / calc1).toString();
        break;
      case "x":
        _input = (calc2 * calc1).toString();
        break;
      default:
        _input = _input;
    }
  }
}
