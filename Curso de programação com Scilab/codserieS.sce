clc
clear
function S=serieS(n)
    S=0
    num=1
    sinal=1
    while(num<=n)
        S=S+(num/num^2)*sinal
        num=num+1
        sinal=sinal*-1
    end          
endfunction

n=input("Informe o número de termos :")
printf("S = %f\n",serieS(n))
