% Definição dos pontos de interpolação
x = [1 2 3 4 5];
y = [10 20 15 25 30];

% Grau do polinômio interpolador
n = 3;

% Cálculo dos coeficientes do polinômio interpolador
p = polyfit(x, y, n);

% Exibição do resultado na tela
fprintf('Coeficientes do polinômio interpolador:\n');
disp(p);

