clear; close all;

angle = (0:0.05:0.5).*pi;
J0 = 1;
r0 = 1;
r = (1:0.05:3)';
x = r.*cos(angle);
y = r.*sin(angle);
R = sqrt(x.^2+y.^2);
J = J0.*(r0./R);

contour(x,y,J,(0.4:0.001:1));
grid on;
hold on;

colormap jet
colorbar

view(0,90); 
set(gca,'XTick',0:0.5:3,'YTick',0:0.5:3);
axis([0,3,0,3]);
xlabel('x/r_0'); ylabel('y/r_0');
title('J/J0');
axis square