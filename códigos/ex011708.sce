//Desenvolver um programa em Matlab que
//leia 3 valores numéricos. Em seguida 
//verificar se os valores lidos podem ser
//as medidas dos lados de um triângulo.
//Caso sejam, verificar e escrever o tipo de 
//triângulo(equilátero, isósceles ou escaleno).
//Caso contrário escrever a mensagem
//"Não existe triângulo.".
clc
clear
A=input('Informe o primeiro valor :');//teclado
B=input('Informe o segundo valor :');//teclado
C=input('Informe o terceiro valor :');//teclado
if A<B+C & B<A+C & C<A+B then
    if A==B & A==C
        printf('Triângulo equilátero');//tela
    else if A==B | A==C | B==C
            printf('Triângulo Isósceles');
        else printf('Triângulo escaleno');
        end
    end
  else  printf('Não existe triângulo');
end
