# Maximum-Likelihood-Estimation
Consider a signal denoted as x[n], which is defined as $x[n] = cos(2π{f_₀}n) + w[n]$, where n takes values from 0 to N-1. $w[n]$ represents white Gaussian noise (WGN) with a variance of $\sigma^2$. 
It is possible to minimize the Maximum Likelihood Estimation (MLE) while simultaneously maximizing the term mentioned in the computations below:

<img src="https://github.com/RGAlavicheh/Maximum-Likelihood-Estimation/assets/94162828/c99c7a11-f810-43e6-ace8-e45fe53c78e0" alt="MLE_calculations" width="600" height="400">

# Simulation
## MC
By utilizing Monte Carlo (MC) simulation as an initial approach, we can generate a plot showcasing the varying possibilities of the mentioned term within the range of 0 to 0.5. Through this simulation, we can observe that at $f = 0.25$, mentioned function attains its maximum value.

<img src="https://github.com/RGAlavicheh/Maximum-Likelihood-Estimation/assets/94162828/72f87804-2a6c-4812-a397-03bb694cdf46" alt="part1_simulation" width="600" height="400">


## Newton-Raphson and grid search
As a secondary approach, we can employ the Newton-Raphson method to determine the maximum value of the mentioned term. This iterative optimization technique allows us to iteratively refine our estimate of the maximum value by approximating the derivative of the term and updating our estimate accordingly.
After obtaining the maximum value using the Newton-Raphson method, we can compare it to the results obtained through grid search. The grid search involves evaluating the term for a range of values within a predefined grid and selecting the value that yields the maximum.

Newton-Raphson:

<span style="font-size: 24px"> $\theta_{k+1} = \theta_{k} - \frac{g(\theta_k)}{\frac{dg(\theta)}{d\theta}}, |\theta_{k+1} - \theta_{k}| < \epsilon$</span>

<img src="https://github.com/RGAlavicheh/Maximum-Likelihood-Estimation/assets/94162828/b1db4504-7fa2-4d9b-bb1f-d4e6f0616099" alt="part1_simulation" width="700" height="400">

<img src="https://github.com/RGAlavicheh/Maximum-Likelihood-Estimation/assets/94162828/6ece95e1-0944-4f71-8281-e8fa2eff2c76" alt="part2_simulation" width="600" height="400">


# Reference
This simulation is based on problem 7-19 of Steven M. Kay Fundamentals of statistical signal processing: Estimation Theory book

