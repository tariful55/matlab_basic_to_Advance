% Input the matrices
mat1 = input('Input the first Matrix: ');
mat2 = input('Input the Second Matrix: ');

[m1_r, m1_c] = size(mat1);
[m2_r, m2_c] = size(mat2);

%initial declarations
sum = zeros(m1_r, m1_c);
sub = zeros(m1_r, m1_c);
mul = zeros(m1_r, m1_c);
div = zeros(m1_r, m1_c);

%iterative operations using for loop
for i = 1:m1_r
    for j = 1:m1_c
        sum(i, j) = mat1(i, j) + mat2(i, j);      
        sub(i, j) = mat1(i, j) - mat2(i, j);      
        mul(i, j) = mat1(i, j) * mat2(i, j);      
        if mat2(i, j) ~= 0                        
            div(i, j) = mat1(i, j) / mat2(i, j);  
        else
            div(i, j) = NaN;
        end
    end
end

% Display the results
disp('Summation of mat1 and mat2 is: ')
disp(sum)

disp('Subtraction of mat1 by mat2 is: ')
disp(sub)

disp('Multiplication of mat1 and mat2 is: ')
disp(mul)

disp('Division of mat1 by mat2 is: ')
disp(div)
