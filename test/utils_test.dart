import 'package:z_imcapp/utils/utils.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Deve retornar verdadeiro para string sem número ou caracter especial',
      () {
    const exemplo = "Lucas";
    const expected = true;
    final result = Utils.somenteNomeEspacos(exemplo);
    expect(result, expected);
  });
  test('Deve retornar falso para string com caracter especial', () {
    const exemplo = "Paulo!";
    const expected = false;
    final result = Utils.somenteNomeEspacos(exemplo);
    expect(result, expected);
  });
  test('Deve retornar falso para string com números', () {
    const exemplo = "Lucas000";
    const expected = false;
    final result = Utils.somenteNomeEspacos(exemplo);
    expect(result, expected);
  });
}
