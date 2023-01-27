import 'package:z_imcapp/classes/imc_calc.dart';
import 'package:z_imcapp/classes/pessoa.dart';
import 'package:z_imcapp/utils/utils.dart';

void main(List<String> arguments) {
  ImcCalculadora calculadoraIMC = ImcCalculadora();

  final nomePessoa = Utils.leEntradaNomeValido(
      "Digite o seu nome: ",
      "Nome inválido, não deve conter números, caracteres especiais ou ser "
          "nulo");
  final pesoPessoa = Utils.leEntradaDouble(
      "Digite o seu peso: ",
      "O peso precisa ser maior "
          "ou igual a 1",
      valorMinimo: 1);
  final alturaPessoa = Utils.leEntradaDouble(
      "Digite a sua altura em metros, exemplo 1.70: ",
      "A sua altura precisa ser maior ou igual a 0.1",
      valorMinimo: 0.1);
  var pessoa = Pessoa(nomePessoa, pesoPessoa, alturaPessoa);
  print(pessoa);
  print(calculadoraIMC.calculaIMC(pessoa).value);
}
