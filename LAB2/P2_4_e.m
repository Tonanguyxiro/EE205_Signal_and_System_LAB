% Problem 2.4(e)

x1 = [1 1 1 1 0 0 0 0 0 0];
nx1 = 0:1:9;

h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];
nh1 = 0:1:4;

he1 = h1;
he2 = [0 0 h1];
nhe2 = 1:1:6;

nye1 = nh1(1)+nx1(1):1:nh1(end)+nx1(end);
nye2 = nhe2(1)+nx1(1):1:nhe2(end)+nx1(end);

ye1 = conv(x1, he1);
ye1_inter = conv(he1, x1)
ye2 = conv(x1, he2);
ye2_inter = conv(he2, x1)

subplot(3,1,1);
hold on
stem(nye1, ye1);
stem(nye1, ye1_inter);

subplot(3,1,2);
hold on
stem(nye2, ye2);
stem(nye2, ye2_inter);

subplot(3,1,3);
hold on
stem(nye1, ye1);
stem(nye2, ye2);

saveas(gcf, "P2_4_e.png");

