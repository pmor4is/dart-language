//Classe: um molde para gerar objetos posteriormente
//Define os atributos
class Date1 {
  int? day;
  int? month;
  int? year;
}
//Null-safety: não pode iniciar somente com 'int day;'
//Para contornar o problema:
//int day =0;
//late int day;
//int? day;

//Classe com método:
class Date2 {
  int? day;
  int? month;
  int? year;
  //Método: função dentro da classe
  //Não precisa colocar como parâmetro: agrupa dentro da classe os atributos e comportamentos
  String formatedDate() {
    return "$day/$month/$year";
  }
}

//Com método construtor
class Date3 {
  int? day;
  int? month;
  int? year;
  //Construtor:
  Date3 (int initialDay, int initialMonth, int initialYear) {
    day = initialDay;
    month = initialMonth;
    year = initialYear;
  }
}

//Outra forma com método construtor:
class Date4 {
  int? day;
  int? month;
  int? year;
  //Construtor:
  Date4 (int day, int month, int year) {
    //this.:objeto atual que esta sendo criado no momento que o construtor foi chamado
    this.day = day;
    this.month = month;
    this.year = year;
  }
  //Forma reduzida de construtor:
  //Date4(this.day, this.month, this.year);
  //Com parâmetros opcionais: utilizar chaves
  //Date4([this.day, this.month, this.year]);
  //Forma reduzida com parâmtros opcionais e com valores padrão:
  //Date4([this.day=1, this.month=1, this.year=1970]);
}

class Date5 {
  int? day;
  int? month;
  int? year;
  Date5([this.day=1, this.month=1, this.year=1970]);
  //Construtor nomeado
  Date5.com({this.day=1, this.month=1, this.year=1970});
  //Outra forma de construtor nomeado
  Date5.lastDayofTheYear(int this.year) {
    day = 31;
    month = 12;
  }
}

main () {
  //Instaciar classe:
  var birthday = new Date1();
  birthday.day = 8;
  birthday.month = 1;
  birthday.year = 1992;
  print("${birthday.day}/${birthday.month}/${birthday.year}");
  
  //Outra forma de instanciar classe:
  Date2 purchaseDate = Date2();
  purchaseDate.day = 9;
  purchaseDate.month = 9;
  purchaseDate.year = 2018;
  print("Data compra: ${purchaseDate.formatedDate()}");

  //Instanciado classe com método construtor
  var momBirthday = new Date3(14,11,1962);
  
  //Construtores nomeados:
  print(Date5.com(year:2022));
  print(Date5.lastDayofTheYear(1999));
}

