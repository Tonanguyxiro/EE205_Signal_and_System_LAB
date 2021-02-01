% Linearity not satified
n=-5:1:5;
x1=n;
x2=3*n;

y1=x1.^3;
y2=x2.^3;

stem(x1,y1);
hold on
stem(x1,y2,'r');
title('1.4(e)');
legend({'x[n]=n','x[n]=3n'}, 'Location', 'northeast');
xlabel('x[n]');
ylabel('y[n]');

saveas(gcf, "LAB1/P1_4_e_out1.png")