void main() {
  var numerosList = [];

  numerosList.add(1);
  numerosList.add("value");

  var numerosSet = <int>{};
  numerosSet.add(12);
  numerosSet.add(12); //o Set nao permite valores duplicados

  var numerosDoListAOSet = numerosList.toSet();

  //diferencças de set
  print(numerosSet.difference(numerosDoListAOSet));

  //uniao
  print(numerosDoListAOSet.union(numerosSet));

  //interseção
  print(numerosDoListAOSet.intersection(numerosSet));

  //lookup vai procurar algo igual a
  print(numerosDoListAOSet.lookup(2));
}
