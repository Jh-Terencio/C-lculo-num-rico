function InterpolLagrangeModelo
    clc
    format long

    % Exemplo1
    x = [1 2 3];
    y = f(x);

    % Exemplo2
    % x = [-1 0 1 2];
    % x = [-1 0 1 2 10];
    % y = f(x);

    n = length(x)-1;      % n eh o grau do polinomio interpolador

    % Calculo dos "coeficientes" ck = yk/denominador da forma de Lagrange
    % Para k variando de 1 até n+1 (pois o Matlab nao tem indice "0")
    %  Calcular o denominador "m" de cada parcela Lk da forma de Lagrange
    %  Calcular c(k) como y(k)/m
    c = zeros(1,n+1);  % inicializa vetor de coeficientes
    for k=1:(n+1)
        m = 1;  % inicializa denominador
        for j=1:(n+1)
            if j~=k
                m = m*(x(k)-x(j));  % calcula denominador m
            end
        end
        c(k) = y(k)/m;  % calcula coeficiente c(k)
    end

    % Impressao dos coeficientes
    disp('Coeficientes do polinomio de Lagrange:');
    for k=1:(n+1)
        fprintf('c%1d: %1.2f\n', k, c(k));
    end
    disp('');

end

function y = f(t)
    y = 6./t;              x=1:3
end
