% Data Sets
x = [1, 2, 3, 4]; 
y = [2.0, 3.4, 3.8, 4.2];
n = length(x); 
h = x(2) - x(1);

% Initialize Backward Difference Table
diff_table = zeros(n, n);
diff_table(:, 1) = y';

% Calculate Backward Differences
for j = 2:n
    for i = 1:n-j+1
        diff_table(i, j) = diff_table(i+1, j-1) 
        - diff_table(i, j-1);
    end
end

% Interpolation Point
xp = 3.5;
p = (xp - x(end)) / h;
yp = y(end);
factorial_val = 1;

% Compute Interpolated Value
for k = 1:n-1
    factorial_val = factorial_val * k;
    yp = yp + (p * prod(p+(0:k-1)) * ...
        diff_table(n-k, k+1)) / factorial_val;
end

% Output Result
fprintf(['Interpolated value at x = %.2f is ' ...
    'y = %.5f\n'], xp, yp);
