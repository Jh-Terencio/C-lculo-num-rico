%%Exercicio 3 da lista 1 de calculo numerico


%Obter, de uma matriz 5x5, uma submatriz contendo somente os elementos das linhas
%e das colunas pares da matriz original? Em geral, como fazer isto?

matriz = randi([0, 9],5, 5)
submatriz = matriz(2:2:end, 2:2:end) .* (mod(matriz(2:2:end, 2:2:end), 2) == 0)
