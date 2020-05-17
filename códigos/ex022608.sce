clc
clear
A=input("Informe o primeiro valor :")
B=input("Informe o segundo valor :")
C=input("Informe o terceiro valor :")
D=input("Informe o quarto valor :")
if A>B | A>C | A>D then
    if B<C & B<D then
        AUX=A
        A=B
        B=AUX
    else if C<D
        AUX=A
        A=C
        C=AUX
    else AUX=A
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
    else AUX=B
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
