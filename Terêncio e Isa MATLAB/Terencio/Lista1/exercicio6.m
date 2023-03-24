
str = input("Digite uma palavra ou frase: ", 's');
strNew = lower(str(str != ' '));
strInv = fliplr(strNew);
resultado = all(strInv == strNew);
if resultado == 1
  fprintf("'%s' é um palíndromo!\n", str);
else
    fprintf("'%s' não é um palíndromo.\n", str);
end



