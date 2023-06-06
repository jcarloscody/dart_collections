void main(List<String> args) {
  List<int> inT = [1];
  print(inT.hashCode);

  refenciaDeMemoria(inT);
  print(inT);
}

void refenciaDeMemoria(List<int> l) {
  print(l.hashCode);
  l.add(1);
}
