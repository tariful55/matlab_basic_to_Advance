% Bisection Method where function is taken as input
func_input= input(['Enter the function f(x)' ...
    ' as a string (e.g., @(x) 3*x - cos(x) - 1): '], 's');
f = str2func(func_input); % Convert the input string to a function handle

a = input('Enter the lower bound of the interval: '); 
b = input('Enter the upper bound of the interval: '); 
tol = input('Enter the tolerance level (e.g., 1e-6): '); 
max_iter = input('Enter the maximum number of iterations: '); 

% Check if the initial interval is valid
if f(a) * f(b) > 0
    error(['The function must have opposite ' ...
        'signs at the endpoints of the interval']);
end
% Bisection Method implementation
iter = 0;
while (b - a) / 2 > tol && iter < max_iter
    iter = iter + 1;
    c = (a + b) / 2;
    if f(c) == 0
        break;
    elseif f(a) * f(c) < 0
        b = c; 
    else
        a = c; 
    end
end
% Display the result
root = (a + b) / 2;
fprintf(['The root is approximately %.6f ' ...
    'after %d iterations.\n'], root, iter)