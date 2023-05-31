function edopviModelo()
    clc
    format long

    % Parâmetros do problema
    x0 = 0; y0 = 1; xn = 10; n = 20;  % Exemplo PVI-1: y'=y
    %x0 = 0; y0 = 1000; xn = 1;  n = 20;  % Exemplo PVI-1: y'= - x*y
    %x0 = 0; y0 = 0;    xn = 1;  n = 20;  % Exemplo PVI-1: y'= x^2+y^2

    h = (xn - x0) / n;  % Tamanho do passo

    % Vetores para armazenar os valores de x e y
    x = zeros(1, n+1);
    y = zeros(1, n+1);
    x(1) = x0;
    y(1) = y0;

    % Implementação do método de Euler
    fprintf('\nMétodo de Euler - Runge-Kutta de primeira ordem \n\n');
    fprintf('Iter %2d:  x%02d: %12.9f   y%02d: %14.9f \n', 0, 0, x(1), 0, y(1));
    for i = 1:n
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + h * f(x(i), y(i));
        fprintf('Iter %2d:  x%02d: %12.9f   y%02d: %14.9f \n', i, i, x(i+1), i, y(i+1));
    end

    % Implementação do método de Euler aperfeiçoado
    fprintf('\nMétodo de Euler Aperfeiçoado - Runge-Kutta de segunda ordem \n\n');
    fprintf('Iter %2d:  x%02d: %12.9f   y%02d: %14.9f \n', 0, 0, x(1), 0, y(1));
    for i = 1:n
        k1 = h * f(x(i), y(i));
        k2 = h * f(x(i) + h, y(i) + k1);
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + (k1 + k2)/2;
        fprintf('Iter %2d:  x%02d: %12.9f   y%02d: %14.9f \n', i, i, x(i+1), i, y(i+1));
    end
end

function z = f(x, y)
    z = y;
    %z = -x*y;
    %z = x^2 + y^2;
end
