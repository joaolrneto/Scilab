clc
clear
close
n_pontos=7;
x=[1.1 2.2 3.3 4.4 5.5 6.6 7.7];
y=[1.01 2.3 3.05 4.28 5.75 6.48 7.84];
soma_x=0;
soma_y=0;
soma_xy=0;
soma_x2=0;
for i=1:n_pontos
    soma_x=soma_x+x(i);
    soma_y=soma_y+y(i);
    soma_x2=soma_x2+x(i)^2;
    soma_xy=soma_xy+x(i)*y(i);
end
media_x=soma_x/n_pontos;
media_y=soma_y/n_pontos;
inclinacao=(soma_xy-soma_x*media_y)./(soma_x2-soma_x*media_x);
y_int=media_y-inclinacao*media_x;
disp('Regressao coeficientes por minimos quadrados:');
printf('Inclinacao (m) =%8.3f\n',inclinacao);
printf('Intersecao da reta de  minimos quadrados (b) = %8.3f\n',y_int);
printf('Equação da reta => y = %.3fx + (%.3f)\n',inclinacao,y_int)
printf('Numero de pontos = %8d\n',n_pontos);
plot(x,y,'ro','MarkerFaceColor','r');
set(gca(),"auto_clear","off");
//mtlb_hold on
xmin=min(x);
xmax=max(x);
ymin=inclinacao*xmin+y_int;
ymax=inclinacao*xmax+y_int;
plot([xmin xmax],[ymin ymax],'k-','LineWidth',2);
set(gca(),"auto_clear","on");
//mtlb_hold off
title('Ajuste de mínimos quadrados');
xlabel('x');
ylabel('y');
legend('Medidas originais','Reta ajustada');
set(gca(),"grid",[1,1]);
//mtlb_grid on
