% Problem 2.10(f)

load inputs/lineup.mat
A = [1 zeros(1, 999) 0.5];
B = [1];
z = filter(B, A, y);
rxx=conv(z, fliplr(z));
stem(rxx);

% For y1 ----------------------------------------
ryy1 = conv(y, flip(y));
nryy1 = -(length(y)-1):(length(y)-1);

figure;
plot(nryy1, ryy1);
title('y[n]*y[-n]');
saveas(gcf, "plots/P2_10_f_out1_1.png");

%! Here N is equal to the distance of tow peak.

% N:1000
% Peak 1: 9976
% Peak 2: 3957
% alpha: 0.5

N = 1000;
alpha = 0.5;
yo1 = filter(1, [1 zeros(1, N-1) alpha], y);
% sound(yo1, 8192); 

% For y2 ----------------------------------------
ryy2 = conv(y2, flip(y2));
nryy2 = -(length(y2)-1):(length(y2)-1);

figure;
plot(nryy2, ryy2);
title('y_2[n]*y_2[-n]');
saveas(gcf, "plots/P2_10_f_out1_2.png");


% N: 501
% Peak 1: 13160
% Peak 2: 6938
% alpha: 0.1 Too small, the peak is fake !!!!!

N = 500;
alpha = 0.1;
yo2 = filter(1, [1 zeros(1, N-1) alpha], y);
% sound(yo2, 8192);

% For y3 ----------------------------------------
ryy3 = conv(y3, flip(y3));
nryy3 = -(length(y3)-1):(length(y3)-1);

figure;
plot(nryy3, ryy3);
title('y_3[n]*y_3[-n]');
saveas(gcf, "plots/P2_10_f_out1_3.png");


% N1: 751
% alpha1: 0.4
% N2: 2252
% alpha2: 0.28
% Peak 1: 14010
% Peak 2: 4884
% Peak 3: 3597

N = 751;
N1 = 2252;
alpha = 0.4;
alpha1 = 0.28;
b = [1 zeros(1, N-1) alpha zeros(1, N1-1)] + [1 zeros(1, N1-1) alpha1 zeros(1, N-1)];
yo3 = filter(1, b, y);
sound(yo3, 8192);