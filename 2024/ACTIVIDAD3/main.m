% Actividad #3
% Objetivos:
% - Graficar con subplot
% - Guardar archivo del dataset CSV
% Nombre: sunombre

% Limpiar variables y linea de comandos
clear%para borrar el workspace y liberar memoria RAM
clc %limpiar el command window

%% Generar datos alatorios
% En todo dataset las filas son muestras y las comlumnas son variables
variables=5; %Columnas
vname=["Corriente","Voltaje","variable3","variable4","variable5"];
%Tarea ----------------- modificar el numero de muestras del dataset
muestras=1000; %Filas
Dataset=rand(muestras, variables);
%matriz de muestras (filas) x variables (columnas)

%% Graficar el dataset
figure %no sobrescribe la anterior grafica

subplot(2,2,1)
plot(Dataset(:,2:3));%
title("Datos aleatorios");
xlabel("muestras");
ylabel("valor");
legend(vname(2:3))

subplot(2,2,2)
plot(Dataset(:,[1,4,5]));
title("Datos aleatorios");
xlabel("muestras");
ylabel("valor");
legend(vname([1,4,5]))

subplot(1,2,3)
plot(Dataset(:,3:5));%
title("Datos aleatorios");
xlabel("muestras");
ylabel("valor");
legend(vname(3:5))

subplot(1,2,4)
plot(Dataset(:,[1]));
title("Datos aleatorios");
xlabel("muestras");
ylabel("valor");
legend(vname([1]))
%clear

%% Guardar los carchivos VSC en el computador
writematrix(Dataset,'Dataset.csv')
clear