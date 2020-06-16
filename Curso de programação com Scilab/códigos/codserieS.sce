clc
clear
function S=serieS(n)
    S=0
    sinal=1
    num=1
    while(num<=n)
        S=S+(num/num^2)*sinal
        sinal=sinal*-1
        num=num+1
    end
endfunction
n=input("Informe o número de termos :")
printf("S = %f\n",serieS(n))