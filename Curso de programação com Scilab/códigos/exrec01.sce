clc
clear
x=input("Informe um valor para X :");
fx=1;
denominador=1;
while denominador <= x
    fx=fx+((x^denominador)/(denominador))
    denominador=denominador+1
end
printf("O valor de f(x) = %f\n",fx)
