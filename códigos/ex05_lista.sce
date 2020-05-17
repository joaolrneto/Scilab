clc
clear
n=input("Tamnhao da amostra :")
na=1
while n>0
    cc=input("Conteúdo de Carbono :")
    dr=input("Dureza Rokwell")
    rt=input("Resistência a tração :")
    if cc<7 & dr>50 & rt>800000
        grau=10
    else if cc<7 & dr>50
        grau=9
    else if cc<7
        grau=8
    else grau=7
    end
end
end
printf("\nAmostra %d => grau %d",na,grau)
na=na+1
n=n-1
end
