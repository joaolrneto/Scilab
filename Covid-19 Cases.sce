clc
clear
exec importdata.sci;
exec model2.sci;
exec loss1.sci;
exec loss2.sci;
exec model.sci;
[header, data] = importdata("time_series_covid19_confirmed_global.csv");
confirmed = strtod(data(:,5:$));
country = data(:,2);
state = data(:,1);
my = confirmed(country == "Malaysia",:);
x = 1:size(my,'*');
figure
plot(x,my)
xticks2string(header(5:$),10)
xtitle("Casos confirmados de Covid-19 na Malásia","Data","Casos")
xgrid()
sg = confirmed(country == "Singapore",:);
figure
plot(x,my,x,sg);
xticks2string(header(5:$),10)
xtitle("Casos confirmados da Covid-19 na Malásia & Singapura","Data","Casos")
xgrid()
legend("Malásia","Singapura",2);

X2 = 1:100;
date_str = header(5:$);
date_str(86:100) = string(16:30);

X = x;
Y1 = my;
Data = [X ; Y1];

//p0 = [1;-1;1;1;1];
p0 = [0;0;0;0;0;0];
[p, dmin] = datafit(loss1, Data, p0);
fy = model2(X2, p);

plot2d(X, Y1, -1)     
plot2d(X2, fy, 15)



X = x;
Y2 = sg;                  
Data = [X ; Y2];

[v, k] = max(Y2);
P0 = [X(k) 1 v 1 1];
[P, dmin]  = datafit(loss2, Data, P0);
fY = model(P, X2);

plot2d(X, Y2,  -1) 
plot2d(X2, fY, 15)


plot2d(X, Y1, -1)     
plot2d(X2, fy, 15)
plot2d(X, Y2,  -1) 
plot2d(X2, fY, 15)
xticks2string(date_str,20);


figure
plot(x(2:$),my(2:$)-my(1:$-1),x(2:$),sg(2:$)-sg(1:$-1));
xticks2string(header(6:$),10)
xtitle("Casos confirmados da Covid-19 na Malásia & Singapura","Data","Casos")
xgrid()
legend("Malásia","Singapura",2);

names = ['Malásia'; 'Brunei'; 'Cambodia'; 'Indonésia'; 'Laos'; 'Mianmar'; 'Filipinas'; 'Singapura'; 'Tailândia'; 'Vietnam'];
asean = [];
for cnt = 1:10
    asean(cnt,:) = confirmed(country == names(cnt),:);
end
figure
barh(asean(:,$))
yticks2string(names,10)
xtitle("Casos confirmados de Covid-19 na Ásia em "+header($),"Casos","País")

[values,index] = gsort(confirmed(:,$));
confirmed_sorted = confirmed(index,$);
country_sorted = country(index);
state_sorted = state(index);

[header, data] = importdata("time_series_covid19_deaths_global.csv"); 
death = strtod(data(:,$));
death_sorted = death(index);
figure
barh(evstr([confirmed_sorted(1:10,$) death_sorted(1:10,$)]),'stacked');
gcf().figure_size = [1024,480];
yticks2string(country_sorted(1:10)+" "+state_sorted(1:10),10);
xtitle("Países com maior número de casos de Covid-19 em "+header($),"Casos","País")
legend("Casos confirmados","Mortes");
