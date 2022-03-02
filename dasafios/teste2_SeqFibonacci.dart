/// 2 Dado a sequência de Fibonacci, onde se inicia por 0 e 1 e o próximo valor sempre será a soma dos 2 valores anteriores (exemplo: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34...), escreva um programa na linguagem que desejar onde, informado um número, ele calcule a sequência de Fibonacci e retorne uma mensagem avisando se o número informado pertence ou não a sequência.
///

void main(){
  seqFibonacci(num: 233);
 
}

seqFibonacci({required int num}){
  num = num;
  int ant = 0;
  int atual = 1;
  int prox = 0;
  List sequienciaFibonacci =[0, 1];
  if (num >= prox) {
    while ( num > prox) {
      prox = ant + atual;
      sequienciaFibonacci.add(prox);
      ant = atual;
      atual = prox;
    }

    if (sequienciaFibonacci.any((numero) => numero == num)) {
      int termo = sequienciaFibonacci.indexWhere((element) => element == num);
      print('O número $num é o ${termo+1}º termo na sequência do Fibonacci');

    }else{
      print('O número $num NÃO esta presente na sequência do Fibonacci');
    }
  
    print(sequienciaFibonacci);

  }else{
    print('Error! Número invalido');
  }
  
}