clc
clear
close()
exec importdata.sci;
exec model2.sci;
exec loss1.sci;
exec loss2.sci;
exec model.sci;
[header, data] = importdata("time_series_covid19_confirmed_global.csv");

//----------Extrai os casos e nomes de todos os países----------------
confirmed = strtod(data(:,5:$));
country = data(:,2);
state = data(:,1);
//----------Países com maoir número de casos--------------------------

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
xtitle("Os 10 países com maior número de casos da Covid-19 em "+header($),"Casos","País")
legend("Casos confirmados","Mortes");
xgrid()
