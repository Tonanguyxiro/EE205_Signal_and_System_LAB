n=0:1:30;

x1=n>=0;
x2=2.*x1;

a=1;
yn1=-1;
y1=diffeqn(a,x1,yn1);
y2=diffeqn(a,x2,yn1);

y3=2.*y1-y2

subplot(1,2,1);
stem(n,y1,'r--p');
xlabel('x_1[n]=u[n]');

subplot(1,2,2);
stem(n,y2,'m--s');
xlabel('x_2[n]=2*u[n]');

saveas(gcf, "LAB1/P1_5_c_out1.png")

figure(2);
stem(n,y3,'^');
xlabel('2*y_1[n]-y_2[n]');

saveas(gcf, "LAB1/P1_5_c_out2.png")