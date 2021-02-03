n=0:1:30;
x=n>=0;
a=0.5;

yn1=0;
y1=diffeqn(a,x,yn1);
yn1=0.5;
y2=diffeqn(a,x,yn1);

subplot(1,2,1);
stem(n,y1,'r--p');
xlabel('y[-1]=0');

subplot(1,2,2);
stem(n,y2,'m--s');
xlabel('y[-1]=0.5');

saveas(gcf, "LAB1/P1_5_d_out.png")