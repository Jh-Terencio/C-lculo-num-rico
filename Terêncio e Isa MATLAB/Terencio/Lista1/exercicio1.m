%Exercício 1 da lista 1 de calculo numerico

%Dada S='abcdefgh', como obter a mesma cadeia de caracteres sem o primeiro
%e o último caracter? Em geral, como fazer isto?
%Dica: pode ser usado "end" para sinalizar o último elemento de uma dimensão.

S = 'abcdefgh';
newS = extractBetween(S,2,length(S)-1)

