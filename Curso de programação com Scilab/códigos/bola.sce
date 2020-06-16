clc
clear
close
conv=%pi/180; //conversão de radianos para graus
g=-9.81;//aceleração devido a gravidade
vo=20;//velocidade inicial
//cria um vetor para todas as distâncias
distancia=zeros(1,91);
//calcula as distâncias máximas
for ii=1:91
theta=ii-1;
vxo=vo*cos(theta*conv);
vyo=vo*sin(theta*conv);
max_tempo=-2*vyo/g;
distancia(ii)=vxo*max_tempo;
end
//escreve a tabela de saida das distâncias
printf('Distância versus ângulo theta :\n');
for ii=1:91
theta=ii-1;
printf('%2d %8.4f\n',theta, distancia(ii));
end
//calcula a distância máxima e ângulo
[maxdist,indice]=max(distancia);
maxangulo=indice - 1;
printf('\nDistância máxima = %8.4f a %2d graus. \n',maxdist, maxangulo);
//plota as trajetórias
for ii=5:10:85
//considera velocidade e tempo máximo para este ângulo
theta=ii;
vxo=vo*cos(theta*conv);
vyo=vo*sin(theta*conv);
max_tempo=-2*vyo/g;
//calcula as posições(x,y)
x=zeros(1,21);
y=zeros(1,21);
for jj=1:21
tempo=(jj-1)*max_tempo/20;
x(jj)=vxo*tempo;
y(jj)=vyo*tempo+0.5*g*tempo^2;
end
plot(x,y,'b');
//considera velocidade e tempo máximo para este ângulo
theta=ii;
vxo=vo*cos(theta*conv);
vyo=vo*sin(theta*conv);
max_tempo=-2*vyo/g;
//calcula as posições(x,y)
x=zeros(1,21);
y=zeros(1,21);
for jj=1:21
tempo=(jj-1)*max_tempo/20;
x(jj)=vxo*tempo;
y(jj)=vyo*tempo+0.5*g*tempo^2;
end
plot(x,y,'b');
end
//adiciona titulos e rótulos nos eixos
title('Trajetória da bola x ângulo theta');
xlabel('x(metros)');
ylabel('y(metros)');
mtlb_axis([0 45 0 25]);
mtlb_grid on
//plota a trajetoria para a distancia maxima
vxo=vo*cos(maxangulo*conv);
vyo=vo*sin(maxangulo*conv);
max_tempo=-2*vyo/g;
//calcula as posicoes (x,y)
x=zeros(1,21);
y=zeros(1,21);
for jj=1:21
tempo=(jj-1)*max_tempo/20;
x(jj)=vxo*tempo;
y(jj)=vyo*tempo+0.5*g*tempo^2;
end
plot(x,y, 'r','LineWidth',3.0);
