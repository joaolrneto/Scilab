clc
clear
function [fx]=rec01(x,denominador)
    if denominador > x then 
        fx=return(1)
    end
    fx=((x^denominador)/(denominador))+rec01(x,denominador+1)
endfunction
x=input("Informe um valor para X :");
denominador=1
printf("O valor de f(x) = %f\n",rec01(x,denominador))
