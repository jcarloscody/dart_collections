import 'dart:html';

void main() {
  //funcao arrow: veio para otimizar o fluxo da funcao.
  print(soma(2, 3));

  //funcao anonima: sem nome
  r();

  () {
    print("funcao anonima automatica");
  }();

  funcaoComoParametro("x", (nome) => print(nome));

  //typedef - tipo definido, vc pode criar um tipo definido
}

//funcao arrow
int soma(int a, int b) => a + b;

VoidCallback r = () {
  print("object");
};

void funcaoComoParametro(String x, Function(String nome) n) {
  n(x);
}

typedef FuncoaQueRecebeNome = void Function(
    String nome); //é como se tivesse criado um alias

void funcaoComoParametro2(String x, FuncoaQueRecebeNome f) {
  f(x);
}
