clc
clear
function F=fat(n)
    F=1
    while n>0
        F=F*n
        n=n-1
    end
endfunction
n=input("Informe um valor :")
printf("Fatorial = %d\n",fat(n))
