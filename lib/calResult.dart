import 'dart:math';

class CalculateResult {
  final int height;
  final int weight;
  double result = 0;
  String msg = "Normal";

  CalculateResult(
    this.height,
    this.weight,
    this.result,
    this.msg,
  );

  calculateResult() {
    result = height / pow(weight / 100, 2);
    return result.toStringAsFixed(1);
  }

  String getDescription() {
    msg = "OBESIDADE GRAU III";
    if (result > 40.0) {
      return "Bem acima do normal\n\n OBESIDADE GRAU III, risco alto de desenvolver Diabetes e problemas Cardiacos.";
    } else if (result > 25.0) {
      msg = "Acima do Normal";
      return "Acima do Normal, Obesidade Grau II";
    } else if (result > 18.5) {
      msg = "Normal";
      return "Dentro do Normal, procure manter o seu peso atual";
    } else if (result < 18.5) {
      msg = "Abaixo do Normal";
      return "Abaixo do normal, procure um nutricionista para ganhar peso";
    }
    return msg;
  }
}
