n = -5:1:5; 
x1=[zeros(1,5) 1 zeros(1,5)];
x2=2*x1;

y1=sin((pi/2)*x1);
y2=sin((pi/2)*x2);

%Plot
subplot(2,1,1);
stem(n,y1);
title('1.4 (a)-1');
xlabel('n');
ylabel('y_1=sin((\pi/2) x_1[n])');

subplot(2,1,2);
stem(n,y2,'r');
title('1.4(a)-2');
xlabel('n');
ylabel('y_2=sin((\pi/2) x_2[n])');

saveas(gcf, "LAB1/P1_4_a_out.png")