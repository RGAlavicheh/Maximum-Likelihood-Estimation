% Consider a signal denoted as x[n], which is defined as
% $x[n] = cos(2π{f_₀}n) + w[n]$, where n takes values from 
% 0 to N-1. $w[n]$ represents white Gaussian noise (WGN) with
% a variance of $\sigma^2$. 
% By utilizing Monte Carlo (MC) simulation as an initial 
% approach, we can generate a plot showcasing the varying
% possibilities of the mentioned term within the range
% of 0 to 0.5. Through this simulation, we can observe that
% at $f = 0.25$, mentioned function attains its maximum value.
% Author: Reza Ghasemi Alavicheh[r.ghasemi.reza@gmail.com]

%%
clc;
clear;
%% constant value
N = 10;
mu = 0;
sigma = 0.1; %deviation
n = [0:N - 1];
f = 0.25;

%%
for i = 1:10
    %% Generation of w(n) and x(n)
    data_J = [];
    w_n = normrnd(mu, sigma, 1, N);
    f = 0.25;
    x_n = cos(2 * pi .* f .* n) + w_n;
    %%
    for f = 0:0.005:0.5
        J = sum(x_n .* cos(2 * pi * f .* n));
        data_J = [data_J J];

    end

    %%

    G1 = plot(0:0.005:0.5, data_J);
    hold on
    G1.LineWidth = 1.25;

end

%% shape
grid on;
ylabel('Domain');
xlabel('Frequency');
title("function maximization")
