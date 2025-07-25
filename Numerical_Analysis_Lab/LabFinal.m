A=[32,4,5;22,56,55;23,53,66];
B=[1,2,3;4,5,6;7,7,8];
disp(A+B);
disp(A-B);
disp(A*B);
disp(A.*B);
disp(A./B)
 C=[5,3;2,4];
d=(det(C));
disp(fix(d*inv(C)));
disp(A);


B=randi([4,50],5,5);
disp(B);
disp('Tariful');
disp(B(1,:)); % first Row
disp(B(2,:)); % second Row
disp(B([1,3],:)) % first and third row
disp(B(:,[2,4])) %2nd and 4th col
B(4,4)=36;
disp(B);
disp(B(2:3,2:3))

O=ones(3,3);
I=eye(2,2);
D=diag([3,5,6,7]);
disp(D);

disp(B')

E=[1:5];
F=2.^E;
disp(F);