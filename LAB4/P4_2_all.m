% 4.2(a)

% 4.2(b)
tau = 0.01
T = 10
N = T/tau

t = [0:tau:T-tau]
y = exp(-2 * abs(t-5))

%4.2(c)
Y = fftshift(tau*fft(y))

%4.2(d)
w = -(pi/tau)+(0:N-1)*(2*pi/(N*tau))

%4.2(e)
X = exp(j*5*w).*Y

%4.2(f)
magnitudeX_app = abs(X)
phaseX_app = angle(X)

x = exp(-2 * abs(t))
X2 = fftshift(tau * fft(x))
magnitudeX = abs(X2)
phaseX = angle(X2)

% plot(t, x, 'g');
% hold on;
% plot(t, y, 'b');

figure;
subplot(2, 1, 1)
hold on
plot(w, magnitudeX_app , 'g')
plot(w, magnitudeX, 'b')
legend('|X| by approximation', '|X|', 'Location', 'northeast');
title('magnitude of X and approximation of X');
subplot(2, 1, 2)
hold on
plot(w, phaseX_app, 'g')
plot(w, phaseX, 'b')
legend('|X| by approximation', '|X|', 'Location', 'northeast');
title('phase of X and approximation of X');
saveas(gcf, "plots/P4_2_f_out1.png")
close

%4.2(g)
magnitudeY = abs(Y)
phaseY = angle(Y)

figure;
subplot(2, 1, 1)
hold on
plot(w, magnitudeY , 'g')
plot(w, magnitudeX, 'b')
legend('Y', 'X', 'Location', 'northeast');
title('magnitude of X and Y');
subplot(2, 1, 2)
hold on
plot(w, phaseY, 'g')
plot(w, phaseX, 'b')
legend('Y', 'X', 'Location', 'northeast');
title('phase of X and Y');
saveas(gcf, "plots/P4_2_f_out2.png")
close

