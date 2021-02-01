n1=-5:9;
n2=-6:9;
x1=[zeros(1,5),ones(1,10)];
x2=[zeros(1,4),ones(1,11)];

subplot(3,1,1);
stem(n1,x1,'b--^');
xlim([-6 10]);
title('1.4(b)-1');
xlabel('n');
ylabel('x[n]=u[n]');

subplot(3,1,2);
stem(n1,x2,'b--^');
xlim([-6 10]);
title('1.4(b)-1');
xlabel('n');
ylabel('x[n+1]=u[n+1]');

y1=[0 x1+x2];
subplot(3,1,3);
stem(n2,y1,'r--p');
xlim([-6 10]);
title('1.4(b)-2');
xlabel('n');
ylabel('y[n]=x[n]+x[n+1]');

saveas(gcf, "LAB1/P1_4_b_out.png")