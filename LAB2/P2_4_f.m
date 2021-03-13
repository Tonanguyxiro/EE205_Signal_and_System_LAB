% Problem 2.4(f)

x1 = [1 1 1 1 0 0 0 0 0 0];
nx1 = 0:1:9;

h1 = [1 -1 3 0 1];
h2 = [0 2 5 4 -1];
nh1 = 0:1:4;

w = x1.*(nx1+1);
hw = nx1;

yf1 = conv(w, h1);
nyf1 = (hw(1)+nh1(1)):1:(hw(end)+nh1(end));

hf1 = [1 0 0 0 0].*[1 2 3 4 5];
nhf1 = 0:1:4;

hf2 = h1;
nhf2 = nh1;

hseries = conv(hf1, hf2);
nhseries = (nhf1(1)+nhf2(1)):1:(nhf1(end)+nhf2(end));

yf2 = conv(x1, hseries);
nyf2 = (x1(1)+nhseries(1)):1:(x1(end)+nhseries(end));

figure;
stem(nyf1, yf1);
stem(nyf2, yf2);

saveas(gcf, "P2_4_f_out.png");
close;



