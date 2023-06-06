void main() {
  var numeros = List.generate(10, (index) => index);

  numeros.forEach(impressao);

  //expand
  //array bidimensional
  var lista = [
    [1, 2],
    [4, 7],
    [44, 55]
  ];

  List listaNova = [...lista[0], lista[1], lista[2]];
  List listaNova2 = lista.expand((element) => element).toList();

  //any - bool
  print(listaNova2.any((element) => element == 1));

  //every
  print(
      "para todo numero x é par: ${listaNova2.every((element) => element % 2 == 0)}");

  //sort - ordenar - ela nao retorna uma nova lista. modifica a existente, entao crie uma nova lista
  final listaParaordendar = [...listaNova2];
  listaParaordendar.sort();

  var listaPaciente = [
    'josue|12',
    'ana|33',
    'maria|22',
  ];

//ordenando por idade
  listaPaciente.sort((paciente1, paciente2) {
    final idade1 = int.parse(paciente1.split('|')[1]);
    final idade2 = int.parse(paciente2.split('|')[1]);

    if (idade1 > idade2) {
      return 1;
    } else if (idade1 == idade2) {
      return 0;
    } else {
      return -1;
    }
  });

//sort com compareTo do int
  listaPaciente.sort((paciente1, paciente2) {
    final pacienteDado1 = paciente1.split('|');
    final pacienteDado2 = paciente2.split('|');

    final idade1 = int.parse(pacienteDado1[1]);
    final idade2 = int.parse(pacienteDado2[1]);

    return idade1.compareTo(idade2);

    /// print(1.compareTo(2)); // => -1
    /// print(2.compareTo(1)); // => 1
    /// print(1.compareTo(1)); // => 0
  });
}

void impressao(Object i) {
  print(i);
}
