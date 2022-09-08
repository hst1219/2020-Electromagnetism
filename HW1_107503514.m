x = linspace(0,540,90);
y = sin(x*pi/180);
z = cos(x*pi/180);
plot(x, y, x, z, '.-'), legend('sin\theta', 'cos\theta');
set(gca,'XTick',0:90:540);
xlabel('\theta(\circ) ');
ylabel('cos\theta and sin\theta');

