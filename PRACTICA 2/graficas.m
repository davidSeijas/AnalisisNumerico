%DAVID SEIJAS PÉREZ
%PRACTICA 2
%MAT. AUXILIAR EJS 1-9

numCol = size(x,2); %Numero de componentes de x(t) (dimension)
color=['r','g','b'];

figure(1)
for i=1:numCol
    subplot(numCol,1,i)
    plot(t,x(:,i), color(i))
    s=sprintf('Coordenada %d de la solucion',i);
    title(s)
end

if numCol>1
    pause(3) 
    %Lo pone en pausa para poder ver la figura 1 porque si no la 2 se superpone
    figure(2)
    if numCol==2
        plot(x(:,1),x(:,2),'r')
    else
        plot3(x(:,1),x(:,2),x(:,3),'r')
    end
    title('Trayectoria de la solucion')
end

