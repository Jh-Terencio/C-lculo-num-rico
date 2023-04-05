% Definição dos pontos de interpolação
x = [-2 -1 0 1 2];
y = [33 -11 -9 -3 13];

% Grau do polinômio interpolador
n = 4;

% Cálculo dos coeficientes do polinômio interpolador
p = polyfit(x, y, n);

% Exibição do resultado na tela
fprintf('Coeficientes do polinômio interpolador:\n');
disp(p);

% Estimativa do valor da função interpolada em x = 3
xq = 3;
yq = polyval(p, xq);

% Exibição do resultado na tela
fprintf('Valor da função interpolada em x = %.2f: %.2f\n', xq, yq);

