import 'package:z_imcapp/classes/pessoa.dart';
import 'package:z_imcapp/exceptions/pessoa_exceptions.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Deveria Criar Pessoa', () {
    const expectedNome = "Lucas";
    const expectedPeso = 80.0;
    const expectedAltura = 1.86;
    final pessoa = Pessoa(expectedNome, expectedPeso, expectedAltura);

    expect(pessoa.getNome(), expectedNome);
    expect(pessoa.getPeso(), expectedPeso);
    expect(pessoa.getAltura(), expectedAltura);
  });
  test('Deve Retornar Exceção PessoaExpection', () {
    const expectedException = TypeMatcher<PessoaException>();

    expect(() => Pessoa("", 0.0, 0.0), throwsA(expectedException));
  });

  test('Deve inserir novo nome', () {
    const expectedNewNome = "Paulo";
    final pessoa = Pessoa("Lucas", 70, 1.7);
    pessoa.setNome(expectedNewNome);

    expect(pessoa.getNome(), expectedNewNome);
  });

  test('Deve Retornar NomeVazioException', () {
    const newNome = "";
    const expectedException = TypeMatcher<NomeNuloException>();
    final pessoa = Pessoa("Lucas", 80, 1.86);

    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
  test('Deveria Retornar NomeInvalidoException', () {
    const newNome = "Lucas000";
    const expectedException = TypeMatcher<NomeInvalidoException>();
    final pessoa = Pessoa("Paulo", 70, 1.7);

    expect(() => pessoa.setNome(newNome), throwsA(expectedException));
  });
}
