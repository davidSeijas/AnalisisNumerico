%DAVID SEIJAS PEREZ
%PRACTICA 3
%Ejercicio 3: Metodo de Adams bathfor de 3 pasos

function[t,x]=mab3(f,intervalo,x0,N)

h = (intervalo(2)-intervalo(1))/N;
t = intervalo(1):h:intervalo(2);
pasos = 3;
inter = [t(1), t(pasos)];
[~,x] = meulermej(f,inter,x0,pasos-1);
x = x.';

for i=1:pasos
    y(:,i) = f(t(i),x(:,i));
end

for i=1:N-2
    x(:,i+3) = x(:,i+2) + (h/12)*(23*y(:,3) - 16*y(:,2) + 5*y(:,1));
	for k=1:pasos-1
		y(:,k) = y(:,k+1);
	end
    y(:, pasos) = f(t(i+3),x(:,i+3));
end

x = x.';
t = t(:);