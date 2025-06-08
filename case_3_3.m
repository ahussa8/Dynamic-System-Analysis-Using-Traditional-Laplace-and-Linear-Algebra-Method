% Define time range
t = linspace(0, 20, 1000); % Time from 0 to 20 seconds

% Constants from the solution
A = 0.561; % Approximation for the cosine term coefficient
B = 0.899; % Approximation for the sine term coefficient
C1 = 0.561; % Approximation for C1
C2 = 3.596; % Approximation for C2
r1 = -1.075; % Real part of exponential term
omega_d = 2.65; % Damped frequency

% Compute displacement function x(t)
x = A * cos(t) + B * sin(t) + exp(r1 * t) .* (C1 * cos(omega_d * t) + C2 * sin(omega_d * t));

% Plot the graph
figure;
plot(t, x, 'b', 'LineWidth', 2);
title('Solution of the Differential Equation for x(t)');
xlabel('Time (s)');
ylabel('Displacement x(t)');
grid on;
