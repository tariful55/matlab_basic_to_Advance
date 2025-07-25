% Bisection Method for f(x)=3x-cos(x)-1
f = @(x) 3*x-cos(x)-1;
a = 0;
b = 1; 
tol = 1e-6; 
max = 1000; 
% Check if the initial interval is valid
if f(a) * f(b) > 0
    error(['The function must have opposite ' ...
        'signs at the endpoints of the interval']);
end
% Bisection Method implementation
iter = 0;
while (b - a) / 2 > tol && iter < max
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
    'after %d iterations.\n'], root, iter);