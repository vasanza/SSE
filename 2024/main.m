% Actividad #2
% Objetivo: Graficar datos y guardarlos
% Nombre: sunombre

% Limpiar variables y linea de comandos
clear%para borrar el workspace y liberar memoria RAM
clc %limpiar el command window

%% Generar datos alatorios
% En todo dataset las filas son muestras y las comlumnas son variables
variables=5; %Columnas
muestras=1000; %Filas
Dataset=rand(muestras, variables);
%matriz de muestras (filas) x variables (columnas)

%% Graficar el dataset
figure %no sobrescribe la anterior grafica
plot(Dataset);
title("Datos aleatorios");
xlabel("muestras");
ylabel("valor");
legend("variable1","variable2","variable3","variable4","variable5")
clear