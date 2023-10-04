class Car {
  String? name;
  final int topSpeed;
  //Adicionando o '_' antes da variavel faz com que o atributo não seja mais visível e acessível fora da classe, ou seja, privado
  int _actualSpeed=0;
  Car([this.name, this.topSpeed=200]);

  //Método getting faz com que consiga acessar o valor presente na '_variavel'
  int get actualSpeed {
    return this._actualSpeed;
  }
  //Método setters: consegue alterar atributo privado
  void set actualSpeed (int newSpeed) {
    //Condição abaixo para poder acessar atributo privado: no exemplo abaixo, nao altera a velocidade se essa for maior q 5
    bool validDelta = (_actualSpeed - newSpeed).abs() <= 5;
    if (validDelta && newSpeed>=0) {
      this._actualSpeed = newSpeed;
    }
  }

  int speedAcelerate() {
    if(_actualSpeed+5 >= topSpeed) {
      _actualSpeed = topSpeed;
    } else {
      _actualSpeed+= 5;
    }
    return _actualSpeed;
  }

  int speedBreak() {
    if(_actualSpeed-5 <= 0) {
      _actualSpeed = 0;
    } else {
      _actualSpeed-= 5;
    }
    return _actualSpeed;
  }

  bool isOnLimit () {
    return _actualSpeed == topSpeed;
  }

  bool isStopped() {
    return _actualSpeed==0;
  }
}