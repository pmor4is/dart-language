main () {
  var grades = [7.8, 4.5, 9.9, 6.8]; 
  //Além do for (int i=0; i<4; i++), existe também a forma abaixo:
  //Associa a variavel "grade" a cada uma das posições de "notas"
  for (var grade in grades) {
    print("O valor da nota é $grade");
  }

  var coordinates = [
    [1,3],
    [4,5],
    [7,3],
    [9,1]
  ];
  for (var coordinate in coordinates) {
    for (var point in coordinate) {
      print("O valor do ponto é: $point");
    }
  }

  Map <String, double> grades2 = {
    'João': 7.2,
    'Rafael': 6.0,
    'Pedro': 9.2,
  };
  //Somente a chave (nome dos alunos)
  for (String name in grades2.keys) {
    print("Nome do aluno: $name");
  }
  //Chave e valores (nome e nota)
  for (String name in grades2.keys) {
    print("Nome do aluno é $name e sua nota é ${grades2[name]}");
  }
  //Somente os valores das chaves (notas)
  for (var grade2 in grades2.values) {
    print("Notas: $grade2");
  }
  //Chave e valores das entradas
  for (var register in grades2.entries) {
    print("O ${register.key} tem nota ${register.value}");
  }
}