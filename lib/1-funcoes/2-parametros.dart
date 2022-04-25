void main() {
  //parametros obrigatórios por default
  //parametros nomeados

  print("object");
}

int soma({required int a, required int b}) {
  return a + b;
}

int soma2({int? a, int? b}) {
  //parametros nomeados sao nullables por default
  a ??= 0;
  b ??= 0;
  //paramentros nomeados podem ser promovidos para non-null com checagem de null
  return a + b;
}

int somaDefault({int a = 10, int b = 1}) {
  return a + b;
}

//parametros opcionais
int somaOpcional([int? a, int? b]) {
  a ??= 0;
  b ??= 0;
  return a + b;
}

void misto(String print) {}
