clc
clear
function F=fat(n)
    if n==1 then
        F=return(1)
    end
    F=n*fat(n-1)
endfunction
n=input("Informe um valor :")
printf("S = %d\n",fat(n))
