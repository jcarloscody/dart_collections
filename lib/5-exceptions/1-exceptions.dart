void main() {
  var idade = "idade 1";

  try {
    int.parse(idade);
    if (idade == 12) {
      throw Exception("forçando um erro!");
    }
  } on FormatException {
    //primeiro colocar as exceções especificas e depois as gerais
    print("tentou converter, mas deu errado");
  } on TypeError catch (e, s) {
    print("$e  $s");
  } catch (e, stacktrace) {
    print("errado em qq hora");
  } finally {
    print("sera sempre executado");
  }
}
