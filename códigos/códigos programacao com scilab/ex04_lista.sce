clc
clear
PKWH=input("Informe o preço do KWH :")
//Inicialização de variáveis quando necessário
MAIORC=0
MENORC=1000000000000
TR=0
TC=0
TI=0
QC=0
NC=input("Número do consumidor :")
while NC<>0
    QKWH=input("Informe a quantidade consumida :")
    TIPO=input("Informe o tipo de consumidor :")
    //Cálculo e escrita do total a pagar por consumidor
    TP=PKWH*QKWH
    printf("\nConsumidor %d",NC)
    printf("\nTotal a Pagar = %.2f",TP)    
    //Verificar o maior e o menor consumo
    if QKWH>MAIORC 
        MAIORC=QKWH
    end
    if QKWH<MENORC then
        MENORC=QKWH
    end   
    //Totalizar por tipo de consumidor
    if TIPO==1
        TR=TR+QKWH
    else if TIPO==2
        TC=TC+QKWH
        else TI=TI+QKWH
        end
    end    
   QC=QC+1 
   NC=input("Número do consumidor :") 
end
MEDIA=(TR+TC+TI)/QC
//Escrita dos resultados
printf("\nMaior Consumo = %f",MAIORC)
printf("\nMenor Consumo = %f",MENORC)
printf("\nConsumo residencial = %f",TR)
printf("\nConsumo comercial = %f",TC)
printf("\nConsumo industrial = %f",TI)
printf("\nMédia geral de consumo = %f",MEDIA)
