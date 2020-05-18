clc
clear
A=input('Informe o primeiro valor :')//teclado
B=input('Informe o segundo valor :')//teclado
C=input('Informe o terceiro valor :')//teclado
if A>B | A>C then
    if B<C
        AUX=A
        A=B
        B=AUX
    else
        AUX=A
        A=C
        C=AUX
end
end
if B>C then
    AUX=B
    B=C
    C=AUX
end
printf("%d\t%d\t%d\n",A,B,C)


