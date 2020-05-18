clc
clear
A=input('Informe o primeiro valor :')//teclado
B=input('Informe o segundo valor :')//teclado
C=input('Informe o terceiro valor :')//teclado
D=input("Informe o quarto valor :")
//ordenação
if A>B | A>C | A>D then
    if B<C & B<D
        AUX=A
        A=B
        B=AUX
    else if C<D
            AUX=A
            A=C
            C=AUX
        else
            AUX=A
            A=D
            D=AUX
        end
        end            
end
if B>C | B>D then
    if C<D
        AUX=B
        B=C
        C=AUX
    else
        AUX=B
        B=D
        D=AUX
end
end
if C>D then
    AUX=C
    C=D
    D=AUX
end
printf("%d\t%d\t%d\t%d\n",A,B,C,D)
