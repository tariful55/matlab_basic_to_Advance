func_input = input(['Enter the function f(x) as a string (e.g.,' ...
    ' @(x) 3*x - cos(x) - 1): '], 's');
f = str2func(func_input); 
a = input('Enter the lower bound of the interval: '); 
b = input('Enter the upper bound of the interval: '); 
tol = input('Enter the tolerance level (e.g., 1e-6): '); 
max_iter = input('Enter the maximum number of iterations: '); 

if f(a) * f(b) > 0
    error(['The function must have opposite signs at the interval' ...
        ' endpoints']);
end

iter = 0;
while abs(b - a) > tol && iter < max_iter
    iter = iter + 1;  
    c = (a * f(b) - b * f(a)) / (f(b) - f(a));
    
    if f(c) == 0 
        break;
    elseif f(a) * f(c) < 0
        b = c;  
    else
        a = c;  
    end
    
    fprintf('Iteration %d: Approximate root = %.6f\n', iter, c);
end

fprintf('The root is approximately %.6f after %d iterations.\n', ...
    c, iter);