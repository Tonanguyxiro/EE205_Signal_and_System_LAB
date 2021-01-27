n= -5:1:5;
x1=[zeros(1,5) 1 zeros(1,5)];
x2=2*x1;
y1=sin((pi/2)*x1);
y2=sin((pi/2)*x2);
subplot(2,1,1);
stem(n,y1);
title('1.4 (a)-1');
xlabel('n');
ylabel('sin(\pi/2) x[n]');
subplot(2,1,2);
stem(n,y2,'r');
title('1.4(a)-2');
xlabel('n');
ylabel('sin(\pi/2) x[n]');