//Desenvolver um scrip em Matlab e Scilab, para desenhar
//as curvas do seno e do cosseno, com valores no intervalo
//de -2*pi a 2*pi, variando de pi/20 em pi/20. 
//Gerar a duas curvas na mesma janela.
//Adicionar à janela do gráfico: título, rótulos,
//legenda. Plotar as curvas com traço, cores e 
//espessuras distintas.
clc
clear
close
x=-2*%pi:%pi/20:2*%pi;
y=sin(x);
z=cos(x);
plot(x,y,':y','LineWidth',2)
mtlb_hold on
plot(x,z,'-.b','LineWidth',3)
xlabel('Valores em radianos')
ylabel('Valores de seno e cosenno')
title(' Curvas do seno e do cosseno');
legend('Seno','Cosseno');
mtlb_grid on
mtlb_hold off
