% Problem 2.5(e)

a = [1 -3/5];
b = 1;
x = ones(1, 20);


s1 = filter(b, a, x);
s2 = zeros(1,21);

ns = 0:19;

for i = 2:21
    s2(i) = ((3/5)^(i-2)) * s2(i-1) + x(i-1)
end

s2 = s2(2:end);

subplot(2, 1, 1);
stem(ns, s1);
title('y_1[n]=(3/5)y_1[n-1]+x[n]');
xlabel('n');
ylabel('s_1[n]');

subplot(2, 1, 2);
stem(ns, s2);
title('y_2[n]=(3/5)^ny_1[n-1]+x[n]');
xlabel('n');
ylabel('s_2[n]');

saveas(gcf, "plots/P2_5_e_out.png");

close;