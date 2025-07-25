f = @(x) x^3 - x - 1;
x0 = 1; % First guess
x1 = 2; % Second guess
tol = 1e-5; % Tolerance
max_iter = 50; % Maximum iterations

for i = 1:max_iter
    f_x0 = f(x0);
    f_x1 = f(x1);
    
    % Secant formula
    x2 = x1 - f_x1 * (x1 - x0) / (f_x1 - f_x0);
    
    % Check for convergence
    if abs(x2 - x1) < tol
        fprintf('Root found at x = %.5f after %d iterations\n', x2, i);
        break;
    end
    
    % Update variables
    x0 = x1;
    x1 = x2;
end

% If maximum iterations reached
if i == max_iter
    fprintf('Secant method did not converge within the given tolerance.\n');
end
