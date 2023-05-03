% Este programa calcula o valor de uma funcao por serie (polinomio) de Taylor
% Taylor: f(x) = Sum(0,infty,f^(n)(a)/n!*(x-a)^n
% Se a=0: f(x) = Sum(0,infty,f^(n)(0)/n!*x^n    (serie de Maclaurin)

function CalcTaylorModelo()
    % Limpa a tela e formata o número com notação longa
    clc
    format long

    disp('Calculo da expansao de Taylor de uma funcao em torno de a = 0');

    % Recebe o valor de x e o grau do polinômio
    x = input('Entre com o valor de x: ');
    g = input('Entre com o grau do polinomio: ');

    % Calcula o polinômio de Taylor
    s = 0;
    for k=0:g
        s = s + coef(k)*x^k/factorial(k);
    end;

    % Exibe o resultado
    fprintf('Taylor: %12.10f\n',s);
    fprintf('Exato : %12.10f\n',f(x));
end

% Função f(x)
function y = f(t)
    y = sin(t);
end

% Função que retorna o coeficiente k da série de Taylor
function c = coef(k)
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

