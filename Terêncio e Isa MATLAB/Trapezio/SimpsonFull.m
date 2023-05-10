function SimpsonModelo()
    clc
    format long

    a = input('Entre com o limite inferior "a" da integral definida: ');
    b = input('Entre com o limite superior "b" da integral definida: ');
    n = input('Entre com o numero "n" de subintervalos: ');

    if n <= 0 || rem(n, 2) ~= 0
        error('O numero de subintervalos deve ser um valor positivo par.')
    end

    h = (b - a) / n;
    S = f(a) + f(b); % Soma para i = 0 e i = n

    for i = 1:n-1
        x = a + i * h;
        coef = 2 + 2 * mod(i, 2);
        S = S + coef * f(x);
    end

    Integral = (h / 3) * S;

    fprintf('\nValor da integral pelo Metodo de Simpson: %9.7f \n\n', Integral);
end

function y = f(t)
    y = 4;
    %y = t;
    %y = t^2;
    %y = t^3;
    %y = t^4;
end

