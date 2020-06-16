clc
clear
function S=serieS(n)
    if n==1 then
        S=return(1)
    end
    if modulo(n,2)==0 then
        S=(n/n^2)*-1+serieS(n-1)
        else  S=(n/n^2)+serieS(n-1)
    end
endfunction
n=input("Informe a quantidade de termos :")
printf("S = %f\n",serieS(n))
