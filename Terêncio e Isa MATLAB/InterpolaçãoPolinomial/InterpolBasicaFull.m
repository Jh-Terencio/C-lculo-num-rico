% Dados de entrada
x = [ -2;  -1;  0;  1;  2];
y = [ 33; -11; -9; -3; 13];
v = 3;

% Processamento
n = length(x)-1;    % n eh o grau do polinomio interpolador

% Criar matriz X
X = zeros(n+1,n+1);
for i=1:(n+1)
  for j=1:(n+1)
    X(i,j) = x(i)^(n-j+1);
  end
end

% Calcular o vetor "a" resolvendo sistema com recursos do Matlab
a = X\y;

% Aplicar o "flip" ao vetor "a"
a = flipud(a);

% Impressao dos coeficientes
disp('Coeficientes do polinomio interpolador:');
for i=1:(n+1)
  fprintf('coef. de x%1d: %1.2f\n', n-i+1, a(i));
end
disp('');

% Valor interpolado
r = polyval(a,v);

% Impressao do valor interpolado
disp('Valor interpolado:');
disp(r);
disp('');

% Impressao do polinomio interpolador
fprintf('Polinomio Interpolador:\n');
fprintf('p%1d(x)= ',n);
for i=1:(n+1)
  fprintf('%+1.4f', a(i));
  if n-i+1 > 1
    fprintf('x^%d ', n-i+1);
  elseif n-i+1 == 1
    fprintf('x ');
  endif
end
fprintf('\n\n');

