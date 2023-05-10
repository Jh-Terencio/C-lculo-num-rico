function TrapezioModelo()
    clc
    format long

    a = 0.0; %input('Entre com o limite inferior "a" da integral definida: ');
    b = 1.0; %input('Entre com o limite superior "b" da integral definida: ');
    n = input('Entre com o numero "n" de subintervalos: ');

    h = (b - a) / n;
    soma = 0;

    for i = 1:n-1
        x = a + i * h;
        soma = soma + f(x);
    end

    Integral = (h / 2) * (f(a) + 2 * soma + f(b));

    fprintf('\nValor da integral pela Regra do Trapezio: %9.7f \n\n', Integral);
end

function y = f(t)
    y = 4;
    %y = t;
    %y = t^2;
    %y = t^3;
    %y = t^4;
end

