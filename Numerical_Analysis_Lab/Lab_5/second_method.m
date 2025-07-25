% Define the function
f = @(x) x^3 - x - 2; 

% Initial guesses
x0 = 1; 
x1 = 2;

% Tolerance and maximum iterations
tol = 1e-6;
max_iter = 100;

% Secant Method Iteration
fprintf('Iter\t  x_n\t\t  f(x_n)\n');
for iter = 1:max_iter
    
    f0 = f(x0);
    f1 = f(x1);    
    x2 = x1 - f1 * (x1 - x0) / (f1 - f0);   
    fprintf('%d\t%.6f\t%.6f\n', iter, x1, f1);     
    if abs(x2 - x1) < tol || abs(f(x2)) < tol
        fprintf('Root found: x = %.6f\n', x2);
        break;
    end  
   
    x0 = x1;
    x1 = x2;
end


if iter == max_iter
    fprintf(['Maximum iterations reached. Solution ' ...
        'may not have converged.\n']);
end
