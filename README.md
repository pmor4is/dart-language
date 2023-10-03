# Seminário da liguagem de programação Dart
##  Linguagens de programação - T01
Professor - Walter Aoiama Nagai
### Alunos:
* Pedro Mello Morais - RA 2019006791
* Davi Bessa Martins - RA 2020009188
* Lucas Luz Souza Pires - 2022003076 
* Kaique Vitor Malaquias Pereira - RA 2022011864 
* Enby Castro Ferreira da Silva - RA 2021031880
* Mateus Cota Lima - RA 2022006953 


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
.ceilToDouble()                                   |
.clamp(num limite-inferior num limite-superior)   |
.compareTo(num outro-numero)                      |
.floor()                                          |
.floorToDouble()                                  |
.remainder(num outro-numero)                      |
.round()                                          |
.roundToDouble()                                  |
.toDouble()                                       |
.toInt()                                          |
.toString()                                       |
.toStringAsExponential([int digitos])             |
.toStringAsFixed(int decimais)                    |
.toStringAsPrecision(int digitos)                 |
.truncate()                                       |
 .truncateToDouble()                              |

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

## Recursos avançados e bibliotecas disponíveis na linguagem:


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