# Liguagem de programação Dart
### Colaboradores:
* Pedro Mello Morais
* Davi Bessa Martins
* Lucas Luz Souza Pires
* Kaique Vitor Malaquias Pereira
* Enby Castro Ferreira da Silva
* Mateus Cota Lima


## Introdução à linguagem:
### História
A linguagem Dart é uma linguagem multi-paradigma, lançada em 2011, na GOTO Conference, que aconteceu em Aarthur, na Dinamarca. O projeto foi idealizado por Lars Bak e Kaspar Lund, e desenvolvido pela Google.

A sintaxe do Dart é baseada na sintaxe no estilo C, orientada a objetos, baseado em classe
### Contexto


## Características da linguagem: 
### Paradimas de programação:


## Sintaxe e estruturas de controle básicas: 
### Hello World:
A sintaxe do Dart tem semelhanças a sintaxe da linguagem C.
<!-- Exemplo de como escrever código em Markdown -->
~~~ dart
void main () {
    print('Hello world');
}
~~~
### Variaveis e tipos básicos:
As variáveis são manipuladores utilizados para se manipular dados. Os tipos de variáveis presentes em Dart são:

<!-- Exemplo de como escrever tabela em Markdown -->

Variável | Tipo de dados
---------|---------------
int      | Números inteiros positivos e negativos
double   | Números flutuantes, que possuem casa decimal
num      | Number: variável que pode ser tanto int ou double
bool     | Valores booleanos, admitindo verdadeiro ou falso
String   | Sequência de caracteres
dynamic  | Permite que a variável armazene qualquer tipo de dado, e esse tipo pode ser alterado em tempo de execução
List     | Coleção ordenada de elementos, semelhante a array, que pode armazenar elementos de diferentes tipos
Map      | Utilizado para armazenar elementos pares com chave e valor, permitindo a associação entre esses valores e suas chaves

Para constantes, pode-se utlizar tanto `final` ou `const`. A diferença entre as duas é que o final é inicializado em tempo de execução, enquanto o const é inicializado em tempo de compilação.

#### Metódos para operações matemáticas:
São métodos que podem ser utilizados para transformação e checagem de dados.

Método                                            | Descrição
--------------------------------------------------|-------------
.abs()                                            | Retorna o valor absoluto
.ceil()                                           | Retorna o último inteiro imediatamente superior
.ceilToDouble()                                   | Retorna o último número imediatamente superior com o tipo double
.clamp(num limite-inferior num limite-superior)   | Se o número estiver dentro do limite, retorna o número. Se não, retorna o limite o qual ele extrapolou
.compareTo(num outro-numero)                      | Compara com outro número, sendo true para diferente e false para iguais
.floor()                                          | Arredonda o número para o inteiro anterior
.floorToDouble()                                  | Arredonda o número para o inteiro anterior, no tipo double
.remainder(num outro-numero)                      | Retorna a sobra da divisão com outro número
.round()                                          | Arredonda o número para o inteiro mais próximo
.roundToDouble()                                  | Arredonda o número para o valor inteiro mais próximo no tipo double
.toDouble()                                       | Converte o número para double
.toInt()                                          | Converte o número para int
.toString()                                       | Converte o número para String
.toStringAsExponential([int digitos])             | Converte para String, com exponencial
.toStringAsFixed(int decimais)                    | Converte para String contendo N casas decimais
.toStringAsPrecision(int digitos)                 | Converte para String contendo N dígitos
.truncate()                                       | Retira as casas decimais, retornando um inteiro
 .truncateToDouble()                              | Retira as casas decimais, retornando um double

### Entrada e saída:
A sintaxe dos comandos de entrada e saída necessitam de uma biblioteca do Dart, dart:io, que permitirá utilizar as funções stdin (para entrada) e stdout (para saída). Abaixo um exemplo dessa utlizização 
~~~ dart
import 'dart:io'

void main () {
    final PI = 3.1415;
    stdout.write("Informe o raio: ");
    var userInput = stdin.readLineSync()!;
    final radius = double.parse(userInput);
    print("O valor do area é: " + area.toString());
}
~~~

### Funções
As funções em Dart podem ser dos tipos básicos com ou parâmetro e com ou sem retorno. Mas também existem particularidades na linguagem que permitem outras formas de utilização de funções. 

#### Função em variável
Nesse tipo de função, a variável armazena a função.

~~~ dart
main () {
    int Function (int,int) sum = sumFunction;
    print(sum(3,4));
}
int sumFunction (int a, int b) {
  return a+b;
}
~~~
No exemplo, o `print` da variavel sum, já soma os valores passados por parâmetros.

##### Função anônima
A função anônima não possui nome. Ela é declarada utilizando uma variável, que recebe uma função que não possui nome. Tmbém pode ser declarada por inferência, ou arrows
~~~ dart
main () {
    //Função anônima
    int Function (int,int) subtraction = (x,y) {
        return x-y;
    };
    //Função anônima declarada por inferência
    var multiplication = (x, y) {
        return x*y;
    }
    //Função anônima declarada utilizando arrows
    var division = (int a, int b) => a/b;
}
~~~

### Estruturas de repetição
Além das estruturas de repetições comuns como declaradas em C++ `for(int i=0; i<n; i++)`, o Dart também oferece a seguinte opção de declaração
~~~dart
    var grades = [7.8, 4.5, 9.9, 6.8];
    for (var grade in grades) {
    print("O valor da nota é $grade");
  }
~~~
Para o uso de estrutura de repetições para ler valores em Map, pegando só a chave, ou somente o valor, ou o cojunto, pode ser feito das seguintes formas
~~~dart 
    Map <String, double> grades = {
    'João': 7.2,
    'Rafael': 6.0,
    'Pedro': 9.2,
  };
  //Somente a chave (nome dos alunos)
  for (String name in grades.keys) {
    print("Nome do aluno: $name");
  }
  //Chave e valores (nome e nota)
  for (String name in grades.keys) {
    print("Nome do aluno é $name e sua nota é ${grades[name]}");
  }
  //Somente os valores das chaves (notas)
  for (var grade in grades.values) {
    print("Notas: $grade");
  }
  //Chave e valores das entradas
  for (var register in grades.entries) {
    print("O ${register.key} tem nota ${register.value}");
  }
~~~
### Filter, map e reduce

### Programação orientada a objetos


## Recursos avançados e bibliotecas disponíveis na linguagem:
### Bibliotecas da plataforma Web

dart:html: fornece elementos HTML e outros recursos para aplicativos baseados na web 1.
dart:indexed_db: armazena valores em um banco de dados de chave-valor no navegador 2.
dart:js: fornece interoperabilidade com JavaScript 2.
### Bibliotecas da plataforma nativa

dart:ffi: permite que o código Dart use APIs C nativas 2.
dart:io: fornece suporte para arquivos, diretórios, processos, soquetes, WebSockets e clientes e servidores HTTP 2.
dart:isolate: permite a programação concorrente usando isolates independentes 2.
### Bibliotecas multiplataforma

dart:async: suporta programação assíncrona, com classes como Future e Stream 2.
dart:collection: fornece classes e utilitários que complementam o suporte à coleção em dart:core 2.
dart:convert: codificadores e decodificadores para converter entre diferentes representações de dados, incluindo JSON e UTF-8 2.
dart:math: constantes matemáticas e funções, além de um gerador de números aleatórios 2.


## Exemplos práticos e casos de uso relevantes
### Desenvolvimento de aplicativos móveis
A linguagem Dart é amplamente utilizada no desenvolvimento de aplicativos móveis, web e desktop.

Em dispositivos móveis, a linguagem é utilizada em conjunto com o framework Flutter, de código aberto. O Flutter é um framework desenvolvido pela Google, assim como o Dart em 2015. Ele permite a criação de aplicativos compilados nativamente. O mecanismo de compilação ocorre em tempo de execução.

Com o Flutter, é possível criar aplicativos móveis tanto para iOs e Android, com apenas um único código.
Uma das facilidades que o Flutter permite é a função de _hot reload_, que permite que as alterações feitas no código, sejam visualizadas instantaneamente em tempo de execução do aplicativo.

Atualmente, o Flutter está ampliando sua base para atender também desenvolvimento web e desenvolvimento desktop, além dos dispositivos móveis, com o mesmo código.
### Integração com API's REST:
O Dart possui bibliotecas que facilitam a integração com API's REST, o que facilita a integração com serviços web.
### Aplicativos IOT:
A integração de Dart com Flutter também proporciona o desenvolvimento de aplicativos para dispositivos IOT.
### Suporte básico a outras funções:
Embora o suporte não seja tão abrangente quanto outras linguagens, o Dart também pode ser utilizados para outras funções, como: 
* Inteligência artificial.
* Machine Learning.
* Realidade aumentada e realidade virtual (combinado com frameworks como ARKit ou ARCore).
* Criação de scripts para automação.
* Desenvolvimento de jogos.

## Comparação com outras linguagens populares, se possível      