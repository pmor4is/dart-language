import 'dart:io';
main () {
  // Numéricos
  int n1 = 3;
  double n2 = -5.68;
  //.abs: imprime o valor absoluto da expressão (positivo)
  print(n2.abs()); 
  // double.parse: converte o valor de String para double
  double n3 = double.parse("12.543"); 
  // Variável 'num' aceita ponto flutuante
  num n4 = 6;
  print(n1+n2+n3+n4);
  n4 = 6.4; //Transformado em ponto flutuante
  print(n1+n2+n3+n4);
  double n5 = 6.99;
  // .roundToDouble(): Arredonda o número
  print(n5.roundToDouble());
  // .truncateToDouble(): Retira as casas decimais
  print(n5.truncateToDouble());
  // Interpolado:
  print("1 + 1 = ${1+1}"); 


  // String
  String saudation = "Bom dia ";
  String myName = "Pedro Mello Morais";
  double notaFinal = 9.2;
  //.toUpperCase: deixa todas as letras em Caps Lock (.toLowerCase, ao contrário)
  print(saudation.toUpperCase() + myName.toLowerCase() + "!!!"); 
  //.subString: pega um pedaço da String (no caso abaixo, de 0 a 4)
  print(myName.substring(0,5)); 
  //.padRight: completa a direita com caracteres (no caso abaixo, "!", até formar 25 caracteres no total em myName)
  print(myName.padRight(25, "!")); 
  // Também pode ser tudo junto (do mesmo tipo de variavel):
  // var s3 = "Pedro Mello Morais".
  //   substring(0,5).
  //   toLowerCase().
  //   padRight(10, "!");
  // Interpolação de String:
  print(saudation + myName + " você está aprovado porque tirou " + notaFinal.toString() + "!"); //Normal
  print("$saudation$myName você está aprovado porque tirou $notaFinal!"); //Interpolado

  // Booleano
  bool isRaining = true; //Não aceita "0" ou "1"
  bool isCold = false;
  print(isRaining && isCold); //AND -> E
  print(isRaining || isCold); //OR -> OU
  print(isRaining ^ isCold); //XOR -> OU exclusivo (apenas um dos dois ser true)
  print(!isCold); //Not -> Negaçao

  // Dynamic: aceita mudar o tipo de variável
  dynamic x = "Subete ga F ni naru";
  print(x);
  x = 15;
  print(x);
  x = false;
  print(x);

  // Estruturas List, Map e Set podem ser:
  // - Homogêneas: todos os elementos do mesmo tipo
  // - Heterogêneas: aceita vários tipos de elemento de variáveis
  // Se a estrutura for do tipo homogênea, ela não aceitara outro tipo depois
  // É melhor ter estruturas homogêneass
  // Diferenças entre Set e List: Set não aceita repetição e lista aceita

  // List
  var approved = ['Ana', 'Pedro', 'Rafael', 'Daniel'];
  print(approved is List); //Imprime se é uma lista
  print(approved);
  approved.add('Daniel'); //Adiciona um elemento a List
  print(approved.elementAt(2)); //Imprime o elemento da terceira posição
  print(approved.length); //Imprime o tamanho da List
  //List generics
  List<String> fruits =['banana', 'maça', 'melao'];
  print(fruits);

  // Map: estrutura que possui chave e valor
  var cellphones = {
    'João': '+55 (12) 12345-6789',
    'Pedro': '+55 (12) 98271-9099',
    'Maria': '+55 (35) 99999-5555',
    'João': '+55 (12) 77777-6789', 
  };
  print(cellphones is Map); //Imprime se é um Map
  print(cellphones);
  print(cellphones['João']); //Imprime o ultimo valor associado a esta chave (não pode existir duas chaves com mesmo nome)
  print(cellphones.length); //Imprime o tamanho do Map
  print(cellphones.values); //Imprime somente os valores
  print(cellphones.keys); //Imprime somente as chaves
  print(cellphones.entries); //Imprime as entradas(chaves e valores)
  //Map generics
  Map<String,double> salary = {
    'gerente': 19000.00,
    'vendedor': 6500.00,
    'estagiario': 600.50
  };
  print(salary);

  // Set: aceita união, intersecção, diferença de conjunto
  var bands = {'The Beatles', 'Queen', 'Radiohead', 'Yes'}; //Assumiu padrão String (não daria para adicionar int)
  //Set bands = {'The Beatles', 'Queen', 'Radiohead', 'Yes'} //Aceita varios tipos de variáveis
  print(bands is Set); //Imprime se é um Set
  bands.add('The Smiths'); //Adiciona um novo elemento
  print(bands.length); //Imprime o tamanho do Set
  print(bands.contains('The Beatles')); //Imprime se o Set contem o elemento
  print(bands.first); //Imprime o primeiro elemento
  print(bands.last);

  //Operador ternário:
  print("Esta chovendo? (y/n)");
  isRaining = stdin.readLineSync()== "y" ? true : false; //Caso coloque "y", então se torna true
  print("Esta frio? (y/n)");
  isCold = stdin.readLineSync() == "y"; //Caso coloque "y", então se torna true

  String result = isRaining || isCold ? "Ficar em casa" : "Sair"; //Caso algum seja true, então "Ficar em casa"
  print(result);
}