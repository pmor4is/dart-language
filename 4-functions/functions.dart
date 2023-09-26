import 'dart:math'; //Biblioteca para usar a função randômica
main() {
  //Além dos tipos básicos de funçao:
  // - Com ou sem parâmetro 
  // - Com ou sem retorno
  // Também existem outras formas em dart, listadas abaixo:
 
  //Parametros dinâmicos:
  concatenate(1, 9);
  concatenate('Bom ', 'dia!!!');
  var result = concatenate('O valor de PI é ', 3.1415);
  print(result.toUpperCase());

  //Parametros opcional:
  int n1 = randomNumber(100);
  print(n1);
  int n2 = randomNumber();
  print(n2);

  //Parametros nomeados:
  saudation(name: "João", age: 30);
  saudation(age:29, name: "Pedro");
  printData(year: 2010);

  //Função em variável: a variável armazena a função (abaixo, a variável sum armazena sumFunction)
  //<tipo de variavel> Function (<tipo dos parametros>) <variavel> = <função>
  int Function (int,int) sum = sumFunction;
  print(sum(3,4));
  //Função anônima (sem nome):
  //<tipo de variavel> Function (<tipo dos parametros>) <variavel> = (<variaveis da função>) {<função>};
  int Function (int,int) subtraction = (x,y) {
    return x-y;
  };
  //Função anônima por inferência:
  var multiplication = (x,y) {
    return x*y;
  };
  //Função anônima utilizando arrow (return implicito):
  var division = (int a, int b) => a/b;

  //Funções como parâmetros:
  var myEvenFunction = () => print("O valor é par!");
  var myOddFunction = () => print("O valor é impar!");
  execute(myEvenFunction, myOddFunction); //Funções como parâmetros
  //também pode ser: execute(fnPar: myEvenFunction, fnImpar:myOddFunction);
  //Função que recebe função como parâmetro, e essa função também recebe um parâmetro que recebe depois:
  executeFor(10, print, "Muito legal");

  //Retorno de funções:
  print(partialSum(2)(10)); //Dois para parâmetro a da primeira função, 10 para parametro b na outra funcao
  var sumWithTen = partialSum(10);
  print(sumWithTen(3));
  print(sumWithTen(6));

  //Função com generycs:
  var list = [1,1,2,3,5,8,13,21,34,55];
  print("Segundo elemento: ${secondElement(list)}");
  int element = secondElementGenerycs<int>(list);
  print("Segundo elemento: $element");

}

//Funções:
//Parâmetro dinâmico:
String concatenate(dynamic a, b) {
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}

//Parâmetro opcional: utilizar []
int randomNumber ([int max = 11]) {
  return Random().nextInt(max); //Função de número aleatório
}

//Parametros nomeados: utilizar chaves. 
//com a atualizaçao do Dart, agora necessita 'required' antes da função
saudation ({required String name, required int age}) {
  print("Olá $name, nem parece que tem $age anos");
}
//Com variáveis começando com um valor pré definido, então não precisa de 'required', como no exemplo abaixo
printData ({int day=1, month=1, year= 1970}) {
  print("$day/$month/$year" );
}

int sumFunction (int a, int b) {
  return a+b;
}

//Funções como parâmetros
void execute (Function fnPar, Function fnImpar) {
  Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar ();
}
void executeFor (int qtde, Function(String) fn, String value){
  for(int i=0; i<qtde; i++) {
    fn(value);
  }
}

//Retorno de funções:
int Function (int) partialSum (int a) {
  return (int b) {
    return a+b;
  };
}

//Função com genericys
//(genérico != generycs(específico))
//Função genérica:
Object secondElement (List list) {
  return list.length>=2 ? list[1] : null;
}
//Função com generycs:
int secondElementGenerycs<int> (List<int> list) {
  return list[1];
}