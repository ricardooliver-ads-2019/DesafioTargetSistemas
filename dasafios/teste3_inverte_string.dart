
// Escreva um programa que inverta os caracteres de um string.
//------------------------IMPORTANTE:
//a) Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;
//b) Evite usar funções prontas, como, por exemplo, reverse;



void main() {
  var s = "Olá , Mundo";
  print(s);
  print(invertString(s));
}

String invertString(String strg) {
  var listLetras = strg.split('');
  var i     = 0;
  var fin   = strg.length - 1;
  while (i < fin) {
    var aux = listLetras[i];
    listLetras[i] = listLetras[fin];
    listLetras[fin] = aux;
    i++;
    fin--;
  }
  var frase ='';
  for (var letra in listLetras) {
    frase = frase+letra;
  }

  return frase;
}