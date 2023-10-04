main () {
  //Map: tipo chave e valor
  var students = [
    {'name': 'Pedro', 'grade': 9.2},
    {'name': 'José', 'grade': 3.4},
    {'name': 'João', 'grade': 7.5},
    {'name': 'Maria', 'grade': 9.3},
    {'name': 'Ana', 'grade': 5.6},
    {'name': 'Fernanda', 'grade': 7.3},
    {'name': 'Clara', 'grade': 6.2},
  ];

  String Function (Map) catchName (student) => student['name'];
  int Function(String) stringLenght = (text) => text.length;
  //.map: mapeia um elemento em outro
  var names = students.map(catchName);
  print(names);

  //.reduce: o resultado da chamada é passado para o próxima chamada, como sendo o primeiro parametro
  var grades = [8.2, 6.4, 5.7, 9.2, 4.5, 6.6, 7.8, 9.3, 3.3, 4.3, 7.8, 8.2];
  var total = grades.reduce(sumFunction);

  var totalGrade = students
    .map((student) => student['grade'])
    .map((grade) => grade as double) //Como o valor de notas estava indicado como 'Object', entao deve-se passar 'as double' para garantir a operação abaixo
    .reduce((t, a) => t+a);
  print("valor da média entre as notas é : ${totalGrade/students.length}");
}
double sumFunction (double accumulator, double element) {
  //O parametro 'a' é que está sendo acumulado a cada execução
  print("$accumulator + $element");
  return accumulator+element;
}
