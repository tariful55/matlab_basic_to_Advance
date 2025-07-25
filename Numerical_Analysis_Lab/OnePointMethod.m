g_input = input(['Enter the rearranged function g(x) for ' ...
    'fixed-point iteration (e.g., @(x) cos(x)/3 + 1/3): '], 's');
g = str2func(g_input);
x0 = input('Enter the initial guess: ');
tol = input('Enter the tolerance level (e.g., 1e-6): ');
max_iter = input('Enter the maximum number of iterations: ');

iter = 0;
while iter < max_iter
    iter = iter + 1;
    x1 = g(x0);
    if abs(x1 - x0) < tol
        break;
    end
    x0 = x1;
    fprintf('Iteration %d: Approximate root = %.6f\n', iter, x1);
end

fprintf(['The root is approximately %.6f after %d iterations.' ...
    '\n'], x1, iter);
