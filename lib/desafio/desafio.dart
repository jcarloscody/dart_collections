// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  //! Detalhe sobre a String
  //! A String é composta por 3 campos (Nome|Idade|Sexo)
  final pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Feminino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  //! Baseado na lista acima.
  //! 1 - Remova os pacientes duplicados e apresente a nova lista
  //! 2 - Me mostre a quantidade de pessoas por sexo (Masculino e Feminino) e depois me apresente o nome delas
  //! 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos e apresente essas pessoas pelo nome
  //! 4 - Encontre a pessoa mais velha e apresente o nome dela.

  int quantidadePessoasF = 0;
  int quantidadePessoasM = 0;
  List<Person> pessoasF = [];
  List<Person> pessoasM = [];
  var p = pessoas
      .map((e) {
        return Person.fromList(e.split("|"));
      })
      .toSet()
      .map((e) {
        print("SEM DUPLICACAO ${e.name}");
        if (e.sex.toLowerCase() == "feminino") {
          quantidadePessoasF++;
          pessoasF.add(e);
        } else {
          quantidadePessoasM++;
          pessoasM.add(e);
        }
        return e;
      })
      .toSet()
      .where((element) {
        if ((element as Person).age > 18) {
          print("> 18 ANOS ${element.name}");
          return true;
        }
        return false;
      })
      .toList();
  p.sort(
    (a, b) {
      return a.age.compareTo(b.age);
    },
  );
  print("quantidadePessoasM $quantidadePessoasM");
  pessoasM.forEach(
    (element) {
      print("nome: ${element.name}");
    },
  );
  print("quantidadePessoasF $quantidadePessoasF");
  pessoasF.forEach(
    (element) {
      print("nome: ${element.name}");
    },
  );
  print("mais velha ${p[p.length - 1].name} com ${p[p.length - 1].age}");
}

class Person {
  String name;
  int age;
  String sex;
  Person({
    required this.name,
    required this.age,
    required this.sex,
  });
  factory Person.fromList(List<String> v) {
    return Person(name: v[0], age: int.parse(v[1]), sex: v[2]);
  }

  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age && other.sex == sex;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode ^ sex.hashCode;
}
