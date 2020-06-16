clc
clear
function [hx]=hxsoma(x,den)
    if den > x then
        hx=return(1)        
    end
    hx=((x^den)/(den))+hxsoma(x,den+1)
endfunction
function [hx]=hxmult(x,den)
    if den > x then
        hx=return(1)        
    end
    hx=((x^den)/(den))*hxmult(x,den+1)
endfunction
x=input("Informe um valor para X :")
den=1
numerador=hxsoma(x,den)
denominador=hxmult(x,den)
printf("h(x) = %.50f",numerador/denominador)
