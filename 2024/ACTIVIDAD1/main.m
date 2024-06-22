% Actividad #1
% Nombre: Victor

clear%para borrar el workspace y liberar memoria RAM
clc %limpiar el command window
V=rand(100, 1);%crea un vector sin imprimir en pantalla

%% crear matrices A y B
A=rand(2, 4)%crea una matrix aleatoria de 2 filas x 4 columnas
B=[1:2;5 8;7 9;1:2];

%%
C=A*B
clear A B

%% 
D=rand(2,2);
plot(D);title("Datos aleatorios")
xlabel("muestras")
ylabel("valor")
legend("Potencia","Corriente")
clear