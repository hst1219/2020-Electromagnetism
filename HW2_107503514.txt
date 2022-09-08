clear all; 
close all;

subplot(1,2,1);

[x,y] = meshgrid(-5:0.5:5);
E = (0.5)./(x.^2+y.^2); 
u = 2*E.*x./sqrt(x.^2+y.^2); 
v = 2*E.*y./sqrt(x.^2+y.^2);

set(gca,'XTick',-5:0.5:5);
set(gca,'YTick',-5:0.5:5);
xlabel('x/R_0'); 
ylabel('y/R_0');
 
grid on; 
hold on;

plot(0,0,'-o');
quiver(x,y,u,v,'b','AutoScale','off');
title('E produced by a point charge');

hold off;
axis square




subplot(1,2,2);

[x,y] = meshgrid(-5:0.2:5);

v = log2((1)./sqrt(x.^2+y.^2)); 

set(gca,'XTick',-5:0.5:5);
set(gca,'YTick',-5:0.5:5);
xlabel('x/R_0'); 
ylabel('y/R_0');
 
grid on; 
hold on;

plot(0,0,'-o');

contour(x,y,v,-2:0.5:2);

caxis([-2 2]) 
colorbar('AxisLocation','in')

title('log2(V/V_0)');

hold off;
axis square
