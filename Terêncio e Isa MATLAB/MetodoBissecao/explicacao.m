%Note que, inicialmente, é definido o intervalo [a,b] e a precisão desejada prec para a função que será avaliada.
%Em seguida, o programa verifica se um dos limites do intervalo já é um zero da função ou se não
%há garantia de raiz no intervalo, abandonando o processo de cálculo da bisseção nesses casos.

%Dentro do loop for, a bisseção é calculada através da média dos limites do intervalo x = (a+b)/2 e o valor da função é
%avaliado neste ponto fx = f(x). Em seguida, é verificado se o valor de fx é suficientemente próximo de zero (dentro da precisão desejada),
%interrompendo as iterações caso afirmativo. Caso contrário, é ajustado o intervalo [a,b] e o valor correspondente da função
