clc
clear
close
n=1;
R=8.314;
T=273;
P=1:0.1:1000;
V=(n*R*T)./P;
figure (1);
plot2d1("oll",P,V);
title('Volume vs pressao de um gas ideal');
xlabel('Pressao (kPa)');
ylabel('Volume (L)');
mtlb_grid on;
mtlb_hold on;
T=373;
V=(n*R*T)./P;
figure(1);
plot2d1("oll",P,V);
mtlb_hold off;
legend('T = 273 K','T = 373 K');
