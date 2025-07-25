func_input = input(['Enter the function f(x) as a string' ...
    ' (e.g., @(x) 3*x - cos(x) - 1): '], 's');
f = str2func(func_input); 
derivative_input = input(['Enter the derivative f''(x) as' ...
    ' a string (e.g., @(x) 3 + sin(x)): '], 's');
f_prime = str2func(derivative_input);
x0 = input('Enter the initial guess: ');
tol = input('Enter the tolerance level (e.g., 1e-6): ');
max_iter = input('Enter the maximum number of iterations: ');

iter = 0;
while iter < max_iter
    iter = iter + 1;
    x1 = x0 - f(x0)/f_prime(x0);
    if abs(x1 - x0) < tol
        break;
    end
    x0 = x1;
    fprintf('Iteration %d: Approximate root = %.6f\n', ...
        iter, x1);
end

fprintf(['The root is approximately %.6f after %d iterations' ...
    '.\n'], x1, iter);
