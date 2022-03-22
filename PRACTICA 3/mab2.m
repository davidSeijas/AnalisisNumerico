%DAVID SEIJAS PEREZ
%PRACTICA 3
%Ejercicio 2: Metodo de Adams bathfor de 2 pasos

function[t,x]=mab2(f,intervalo,x0,N)

h = (intervalo(2)-intervalo(1))/N;
t = intervalo(1):h:intervalo(2);
pasos = 2;
inter = [t(1), t(pasos)];
[~,x] = meulermej(f,inter,x0,pasos-1);
x = x.';

for i=1:pasos
    y(:,i) = f(t(i),x(:,i));
end

for i=1:N-1
    x(:,i+2) = x(:,i+1) + (h/2)*(3*y(:,2) - y(:,1));
    y = [y(:,2), f(t(i+2),x(:,i+2))];
end

x = x.';
t = t(:);