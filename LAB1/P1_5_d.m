n=0:1:30;
x=n>=0;
a=0.5;

yn1=0;
y1=diffeqn(a,x,yn1);
yn1=0.5;
y2=diffeqn(a,x,yn1);

subplot(2,1,1);
stem(n,y1,'r--p');
title('1.5(d)-1');
xlabel('y[-1]=0');

subplot(2,1,2);
stem(n,y2,'m--s');
title('1.5(d)-2');
xlabel('y[-1]=0.5');

saveas(gcf, "LAB1/P1_5_d_out.png")