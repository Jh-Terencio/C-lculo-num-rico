% Este programa calcula o valor de uma funcao por serie (polinomio) de Taylor
% Taylor: f(x) = Sum(0,infty,f^(n)(a)/n!*(x-a)^n
% Se a=0: f(x) = Sum(0,infty,f^(n)(0)/n!*x^n    (serie de Maclaurin)

function CalcTaylorModelo()
  % clc
  format long

  disp('Calculo da expansao de Taylor de uma funcao em torno de a = 0');
  x = input('Entre com o valor de x: ');
  g = input('Entre com o grau do polinomio: ');

  s = 0;
  for k=0:g
    s = s + coef(k)*x^k/factorial(k);
  end;

  fprintf('Taylor: %12.10f\n',s);
  fprintf('Exato : %12.10f\n',f(x));
end

function y = f(t)
  %y = exp(t);
  %y = cos(t);
  y = sin(t);
end

function c = coef(k)
  %%% funcao exponencial
  % Implementar coeficientes para função exponencial
  %c = 1/factorial(k);

  % Coeficientes da serie de Taylor do cosseno
  %c = (-1)^k / factorial(2*k);

  % Coeficientes para a função seno
    if mod(k, 4) == 0
        c = 0;
    elseif mod(k, 4) == 1
        c = 1;
    elseif mod(k, 4) == 2
        c = 0;
    else
        c = -1;
    end
end
