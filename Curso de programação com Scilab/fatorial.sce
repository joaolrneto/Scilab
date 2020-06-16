clc
clear
function res = fat(x)
    if x == 1 then
     res = return(1)   
    end
    res = x * fat(x-1)
endfunction
a=input("Informe um valor :")
printf("O fatorial de %d é %d ",a,fat(a))
