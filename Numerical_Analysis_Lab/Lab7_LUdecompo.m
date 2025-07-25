A = [4, -2, 1; -2, 4, -2; 1, -2, 3];
b = [1; 4; 2];

% LU decomposition using MATLAB's built-in function
[L, U] = lu(A);

% Forward substitution to solve L*y = b
y = L\b;

% Back substitution to solve U*x = y
x = U\y;

% Display the solution
disp('Solution vector x is:')
disp(x)
