%Exercicio 5 da lista 1 de calculo numerico

%Pedir um número entre 1 e 9 e escrevê-lo por extenso.
%E como preencher cheque, dado o valor?
%Dica: EX = ['UM   '; 'DOIS '; 'TRES '; ... ; 'NOVE '];


% Definindo um vetor com os números por extenso
EX = {'ZERO ';'UM   '; 'DOIS '; 'TRES '; 'QUATRO'; 'CINCO'; 'SEIS '; 'SETE '; 'OITO '; 'NOVE '};

% Solicitando um número entre 1 e 9 do usuário
numero = input('Digite um número entre 1 e 9: ');

% Verificando se o número está dentro do intervalo permitido
if numero < 0 || numero > 9
    disp('Número inválido!')
else
    % Imprimindo o número por extenso
    disp(['O número digitado foi ', EX{numero}])
end
