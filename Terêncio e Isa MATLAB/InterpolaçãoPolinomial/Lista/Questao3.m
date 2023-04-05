% Definição dos pontos de interpolação
x = [-1 0 2];
y = [4 1 -1];

% Grau do polinômio interpolador
n = 2;

% Cálculo dos coeficientes do polinômio interpolador
p = polyfit(x, y, n);

% Exibição do resultado na tela
fprintf('Coeficientes do polinômio interpolador:\n');
disp(p);

% Estimativa do valor da função interpolada em x = 1
xq = 1;
yq = polyval(p, xq);

% Exibição do resultado na tela
fprintf('Valor da função interpolada em x = %.2f: %.2f\n', xq, yq);

