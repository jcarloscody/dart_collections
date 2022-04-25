void main() {
  print(Cores.azul.name);
  print(Cores.values.byName('vermelho'));

  var mapa = Cores.values.asMap();
  print(mapa);

  var mapaPeloNome = Cores.values.asNameMap();
  print(mapaPeloNome);
}

enum Cores { vermelho, azul, laranja }
