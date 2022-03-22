%DAVID SEIJAS PÉREZ
%PRACTICA 2
%EJERCICIO 1

%clear all %Para limpiar todas las variables por posibles conflictos
datos
[t,x]=ode45(f,intervalo,x0)
graficas

%En vez de hacer el ejercicio 1, leemos del fichero datos los datos que
%queremos, luego ejecutamos con ode45 y mostramos con grafica el resultado,
%en lugar de todo lo que hacemos en Practica_2