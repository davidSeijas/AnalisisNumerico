% PRÁCTICA 2
% DAVID SEIJAS

% -------------------------------------------------------------------------
% Ejercicio 1
% -------------------------------------------------------------------------

f=@(t,x) [x(2);-9*x(1)+8*sin(t)]
% Para resolver el PVI de x(t) = f(t, x(t)) en t in [0, 2pi] y 
% x1(0)=0 x2(0)=4
[t,x]=ode45(f,[0,2*pi],[0,4])
% t = partición no equispaciada desde 0 a 6.28
% x = aprox. de la i componente de la sol de los nodos de t
[t,x]=ode45(f,[0:0.01:2*pi],[0,4])
% t = partición equispaciada con paso 0.01 desde 0 a 6.28
% el metodo se calcula con las ts de él (no equispaciadas)y luego te saca
% la solucion evaluada en las ts equispaciadas (la que nos interesan)
figure(1)
subplot(2,1,1)
% la ventana de la figura la divide en una matriz (de figuras) con 2 filas
% y 1 columna. La 3ª componente indica si estamos en la figura 1 o en la 2
% (en la fila 1 o en la 2)
plot(t,x(:,1))
subplot(2,1,2)
plot(t,x(:,2))
figure(2)
plot(x(:,1),x(:,2));

% Apartado c
% OSCILADOR ARMÓNICO
k = 1
m = 1
T = 10
intervalo = [0,T]
x0 = [1, 0]
f=@(t,x) [x(2);-(k/m)*x(1)]

[t,x]=ode45(f,intervalo,x0)

figure(1)
subplot(2,1,1)
plot(t,x(:,1))
subplot(2,1,2)
plot(t,x(:,2))
figure(2)
plot(x(:,1),x(:,2));
axis equal
% sale un circulo achatado y puede ser por tener escala distinta en x e y. 
% Para ponerlo en igual escala poner axisequal

% VAN DER POL
a = 1
b = 1
T = 10
intervalo = [0,T]
x0 = [0.1, 0.2]
f=@(t,x) [x(2);-x(1)-a*(x(1)^2-b)*x(2)]

[t,x]=ode45(f,intervalo,x0)

%Luego sacaremos los datos del fichero datos.m y los dibujos con graficas.m