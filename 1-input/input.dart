import 'dart:io'; //Biblioteca para usar stdin, stdout

main () {
  // Variável 'final' nao muda mais (constante). 
  // Variável 'const' também é uma constante, mas ela é definida na compilação.
  final PI = 3.1415;

  // Saída: aparece a mensagem no terminal, sem quebrar linha (sem \n)
  stdout.write("Informe o raio: "); 

  // Entrada: 
  // Deve inserir ! no final se for var. Exemplo: String teste = stdin.readLineSync()!;
  // Deve inserir ? depois de declarar variavel. Exemplo: String? teste = stdin.readLineSync();
  // Em "userInput", pode ser final, mas não const, porque a variavel é definida na execução do programa
  var userInput = stdin.readLineSync()!; 

  //double.parse: associa a String a um tipo double
  final radius = double.parse(userInput);

  var area = PI * radius * radius;
  //Concatenar radius (double) em String
  print("O valor do area é: " + area.toString()); 

  // Variável 'final' em listas: 
  // A lista é constante, mas o conteúdo da lista não é constante, podendo ser alterado
  final list1 = ['Pedro', 'Lucas']; 
  list1.add('João');
  print(list1);
  // list1 = ['Leon', 'Trivago']; -> Não consegue atribuir uma nova lista a lista1
  // Ao utilizar const, não pode ser alterada a referencia e atribuir outra lista
  final lista2 = const ['Pedro', 'Nicolly', 'Lucas', 'Thulio']; 
  
  // Variável 'var' em listas: pode ser alterado
  var list3 = ['Pedro', 'Lucas'];
  list3.add('João');
  print(list3);
  list3 = ['Leon', 'Elson'];
  print(list3);

  // Utilizando const, não pode ser alterada, pois é constante, porém pode mudar o valor da variável (list4) para outra coisa
  var list4 = const ['Pedro', 'Nicolly', 'Lucas', 'Thulio']; 
  list4 = ['Caio', 'Bruno']; //Agora o list4 pode ser mudado
  print(list4);

  // Variável 'const' em listas: 
  // Não pode ser alterada a lista, pois é constante
  const list5 = ['Pedro', 'Nicolly', 'Lucas', 'Thulio'];
}

// Observação: 
// Dart update: aonde for utilizada a função "stdin.readLineSync();"
// será substituída por "stdin.readLineSync().toString();"