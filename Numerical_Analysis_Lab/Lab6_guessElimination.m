A = [3, -0.1, -0.2; 0.1, 7, -0.3; 0.3, -0.2, 10];
b = [7.85; -19.3; 71.4];

% Number of equations
n = length(b);

% Forward Elimination
for i = 1:n-1
    for j = i+1:n
        factor = A(j,i) / A(i,i);
        A(j, i:n) = A(j, i:n) - factor * A(i, i:n);
        b(j) = b(j) - factor * b(i);
    end
end

% Back-Substitution
x = zeros(n,1); 
x(n) = b(n) / A(n,n);
for i = n-1:-1:1
    x(i) = (b(i) - A(i,i+1:n) * x(i+1:n)) / A(i,i);
end

% Display result
disp('Solution vector x is:')
disp(x)
