//Desenvolver um programa em Matlab que
//gere um gráfico no plano cartesiano.
//Considere valores para x(entre -2*pi e
//+2*pi, variando de pi/40).
//Trace as curvas do seno e do cosseno.
//Coloque título, rótulo nos eixos,legenda.
//As curvas deverão ser de cores e traços
//diferentes com 3 pixel de espessura.
clc
clear
close
x=-2*%pi:%pi/40:2*%pi;
y=sin(x);
z=cos(x);
plot(x,y,'-r','LineWidth',3);
mtlb_hold on
plot(x,z,'--k','LineWidth',3);
xlabel('X');
ylabel('seno e cosseno');
legend('Seno','Cosseno');
title('Curvas do seno e do cosseno');
mtlb_grid on
mtlb_hold off
