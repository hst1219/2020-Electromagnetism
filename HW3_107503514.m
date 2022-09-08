clear all; 
close all;

[x1,z1] = meshgrid(-4:0.5:4); 

%Q(z = 2/d)
E1_1 = (1)./(x1.^2+(z1-0.5).^2);                
u1_1 = E1_1.*x1./sqrt(x1.^2+(z1-0.5).^2);
v1_1 = E1_1.*(z1-0.5)./sqrt(x1.^2+(z1-0.5).^2);

 %-Q(z = -2/d)
E2_1 = -((1)./(x1.^2+(z1+0.5).^2));                
u2_1 = E2_1.*x1./sqrt(x1.^2+(z1+0.5).^2);
v2_1 = E2_1.*(z1+0.5)./sqrt(x1.^2+(z1+0.5).^2);

u1 = u1_1 + u2_1;
v1 = v1_1 + v2_1;

figure(1);
set(gca,'XTick',-5:0.5:5,'YTick',-5:0.5:5);
axis ([-5,5,-5,5]);
xlabel('x/d'); ylabel('z/d'); 
hold on;

plot(0,0.5,'-or');
plot(0,-0.5,'-ob');

quiver(x1,z1,u1,v1,'k','AutoScale','off');
hold off;
axis square


[x3,z3] = meshgrid(-4:0.1:4); %Q3
V = 1./(x3.^2+(z3-0.5).^2).^(1/2)-1./((x3.^2.+(z3+0.5).^2).^(1/2));


figure(2);
set(gca,'XTick',-5:0.5:5,'YTick',-5:0.5:5);
axis ([-5,5,-5,5]);
xlabel('x/d'); ylabel('z/d');
title('V/V_0');

hold on;
plot(0,0.5,'-or');
plot(0,-0.5,'-ob');
contour(x3,z3,V,-4:0.05:4);

colormap jet;
colorbar;
hold off;
axis square

x=logspace(-2,3);
Ex=(1)./(x.^2+(0.5).^2).^(3/2);

figure(3);
loglog(x,Ex,'b');
xlabel('x/d'); ylabel('|E|/E0');
title('|E|/E0 along x axis ');
axis square
