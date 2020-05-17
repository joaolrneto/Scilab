clc
clear
close
x=[1.2 2.4 3.6 4.1 5.0 6.12 7.34 8.02];
y=[1.6 2.3 3.02 4.25 5.5 6.8 7.0 8.7];
soma_x=0;
soma_y=0;
soma_xy=0;
soma_x2=0;
for i=1:8
    soma_x=soma_x+x(i);
    soma_y=soma_y+y(i);
    soma_x2=soma_x2+x(i)^2;
    soma_xy=soma_xy+x(i)*y(i);
end
media_x=soma_x/8;
media_y=soma_y/8;
inclinacao=(soma_xy-soma_x*media_y)./(soma_x2-soma_x*media_x);
y_int=media_y-inclinacao*media_x;
disp('Regressao coeficientes por minimos quadrados:');
printf('Inclinacao (m) =%8.3f\n',inclinacao);
printf('Intersecao da reta de  minimos quadrados (b) = %8.3f\n',y_int);
printf('Numero de pontos = %8d\n',8);
plot(x,y,'ro','MarkerFaceColor','r');
mtlb_hold on
xmin=min(x);
xmax=max(x);
ymin=inclinacao*xmin+y_int;
ymax=inclinacao*xmax+y_int;
plot([xmin xmax],[ymin ymax],'k-','LineWidth',2);
mtlb_hold off
title('\bfAjuste de Minimos quadrados');
xlabel('\bf\itx');
ylabel('\bf\ity');
legend('Medidas originais','Reta ajustada');
mtlb_grid on
