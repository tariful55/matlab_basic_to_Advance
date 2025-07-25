% Data Sets
x = [1, 2, 3, 4]; 
y = [2.0, 3.4, 3.8, 4.2];
n = length(x); % Number of points
h = x(2) - x(1); % Uniform spacing

% Initialize Forward Difference Table
diff_table = zeros(n, n);
diff_table(:, 1) = y';

% Calculate Forward Differences
for j = 2:n
    for i = 1:n-j+1
        diff_table(i, j) = diff_table(i+1, j-1) - diff_table(i, j-1);
    end
end

% Interpolation Point
xp = 1.5; % Point to estimate
p = (xp - x(1)) / h; % Compute 'p'
yp = y(1); % Start with the first y-value
factorial_val = 1;

% Compute Interpolated Value
for k = 1:n-1
    factorial_val = factorial_val * k;
    yp = yp + (p * prod(p-(0:k-1)) * diff_table(1, k+1)) / factorial_val;
end

% Output Result
fprintf('Interpolated value at x = %.2f is y = %.5f\n', xp, yp);
