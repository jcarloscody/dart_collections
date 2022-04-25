void main() {
  //mapa é uma representacao de chave valor
  final paciente = <String, String>{"key": "value"};

  Map<String, String> paciente1 = {};
  Map<String, String>? paciente2 = null;
  Map<String?, String> paciente3 = {};
  Map<String, String?> paciente4 = {};

  paciente1.putIfAbsent('nome', () => "josue"); //adiciona se nao existe a key
  paciente1.update('nome', (value) => "carlos");

  print(paciente1['nome']);

  paciente1.update('nome', (value) => 'silva', ifAbsent: () => 'silva');

  paciente1.forEach((key, value) {
    print(key);
    print(value);
  });

//fazer algum proc async dentro dele
  for (var entry in paciente1.entries) {
    print(entry.value);
  }

  int i = 0;
  var novoMapa = paciente1.map((key, value) {
    i++;

    return MapEntry(key + "_novo", value + '${i}');
  });
}
