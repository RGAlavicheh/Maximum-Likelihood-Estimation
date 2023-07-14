% simulation of problem 7-19 
% Steven M. Kay, Fundamentals of statistical signal processing: Estimation Theory book
% Author: Reza Ghasemi Alavicheh[r.ghasemi.reza@gmail.com]

clc;
clear;
%% constant value
N = 10;
mu = 0;
sigma = 0.1;
n = [0:N - 1];

%% Generate
f_k0 = 0.25;
w_n = normrnd(mu, sigma, 1, N);
x_n = cos(2 * pi .* f_k0 .* n) + w_n;

%% Newton-Raphson
f_k0 = 0.24;
i = 0;
data_f = [];

while true
    i = i + 1; % counter

    f_k1 = f_k0 - (sum((2 * pi .* n) .* x_n .* sin(2 * pi * f_k0 .* n))) / (sum(((2 * pi .* n).^2) .* x_n .* cos(2 * pi * f_k0 .* n)));
    data_f = [data_f f_k0];

    if abs(f_k1 - f_k0) < 10e-9
        
        break
        
    end

    f_k0 = f_k1;

    if i > 50
       
        break;

    end

end
mean_f = (sum(data_f))/length(data_f) ; 
%% shape
hold on;
plot(data_f);
yline(0.25, '--');
grid on;
ylabel('Estimate');
xlabel('Iterations');
title('Newton-Raphson');

%% Grid (fine grid)
data_grid1 = [];
data_ff = [0:0.01:0.5];

for ff = 0:0.01:0.5
    J1 = sum(x_n .* cos(2 * pi * ff .* n));
    data_grid1 = [data_grid1 J1];

end

%% shape
figure;
max_grid = max(data_grid1);
stem(data_ff, data_grid1);
hold on
plot(data_ff, data_grid1);
yline(max_grid, '--', 'linewidth', 3);
ylim([-3 6]);
ylabel('J');
xlabel('Frequency');
title('Grid Method with fine grid');
grid on;

%% Grid (bad grid)
data_grid2 = [];
data_ff = [0:0.1:0.5];

for ff = 0:0.1:0.5
    J2 = sum(x_n .* cos(2 * pi * ff .* n));
    data_grid2 = [data_grid2 J2];

end

%% shape
figure;
max_grid = max(data_grid2);
stem(data_ff, data_grid2);
hold on
plot(data_ff, data_grid2);
yline(max_grid, '--', 'linewidth', 3);
ylim([-0.2 2.3]);
ylabel('J');
xlabel('Frequency');
title('Grid Method with short grid');
grid on;
