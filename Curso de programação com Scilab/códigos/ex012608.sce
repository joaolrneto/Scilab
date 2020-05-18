clc
clear
A=input("Informe o primeiro valor :")
B=input("Informe o segundo valor :")
C=input("Informe o terceiro valor :")
if A>B | A>C then
    if B<C then
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
