main () {
  // Filter
  var grades = [8.2, 6.4, 5.7, 9.2, 4.5, 6.6, 7.8, 9.3, 3.3, 4.3, 7.8, 8.2];
  print("Notas: $grades");
  var goodGrades = [];
  for (var grade in grades) {
    if (grade >= 6) {
      goodGrades.add(grade);
    }
  }
  print("Notas boas: $goodGrades");

  //Filter com função:
  //Função verifica se a nota maior que 7, é verdadeiro ou falso
  bool Function (double) veryGoodGradesFunction = (double grade) => grade >= 8;
  //.where(): "filtra" a função 'veryGoodGradesFunction' para verificar se é verdadeiro ou falso
  //Se for verdadeiro, ele adicionara a função veryGoodGrades
  var veryGoodGrades = grades.where(veryGoodGradesFunction);
  print("Notas muito boas: $veryGoodGrades");

  //Filtro com função generycs
  //Vantagens: criar uma função fora da main genérica, e na main aplicar as condições 
  var badGradesFunction = (double grade) => grade < 6.0;
  var badGrades = filtrar<double>(grades, badGradesFunction);
  print("Notas ruins: $badGrades");

  var names = ['Pedro', 'Paulo', 'Henrique', 'João', 'Paula', 'José'];
  var namesWithPFunction = (String name) => name[0]=='P';
  var namesWithP = filtrar<String>(names, namesWithPFunction);
  print("Nomes iniciando com P: $namesWithP");

}
//Filtro com generycs
//Para filtrar qualquer tipo de variavel (double, string), cria o tipo "E", que depois será inferido qual tipo que é
List<E> filtrar<E> (List<E> list, bool Function(E) fn) {
  List<E> filteredList = [];
  for (E element in list) {
    if(fn(element)) {
      filteredList.add(element);
    }
  }
  return filteredList;
}