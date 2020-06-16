clc
clear
x=input("Informe um valor para X :")
den=1
numerador=1
denominador=1
while den <= x
    numerador=numerador+(x^den)/den
    denominador=denominador*(x^den)/den 
    den=den+1  
end
printf("h(x) = %.50f",numerador/denominador)
