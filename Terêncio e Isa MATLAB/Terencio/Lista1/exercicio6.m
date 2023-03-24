
str = input("Digite uma palavra ou frase: ", 's');
strNew = lower(str(str != ' '));
strInv = fliplr(strNew);
resultado = all(strInv == strNew);
if resultado == 1
  fprintf("'%s' é um palíndromo!\n", str);
else
    fprintf("'%s' não é um palíndromo.\n", str);
end


%>> frase = 'A base do teto desaba'
%frase = A base do teto desaba
%>> fliplr(frase)
%ans = abased otet od esab A
%>> frase(frase != ' ')
%ans = Abasedotetodesaba
%>> lower(frase(frase != ' '))
%ans = abasedotetodesaba
%>> fraselimpa = lower(frase(frase != ' '))
%fraselimpa = abasedotetodesaba
%>> all(fraselimpa == fliplr(fraselimpa))
%ans =  1
