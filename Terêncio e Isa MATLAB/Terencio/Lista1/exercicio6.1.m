%Exercício 6 da lista 1 de calculo numerico


% Lê a palavra ou frase do usuário
str = input("Digite uma palavra ou frase: ", 's');

% Remove os espaços em branco da string
str = strrep(str, ' ', '');

% Inverte a string
str_inv = '';
for i = length(str):-1:1
    str_inv = strcat(str_inv, str(i));
end

% Verifica se a string original é igual à string invertida
if strcmpi(str, str_inv)
    fprintf("'%s' é um palíndromo!\n", str);
else
    fprintf("'%s' não é um palíndromo.\n", str);
end
