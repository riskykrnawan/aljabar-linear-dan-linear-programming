%Metode Gauss Jordan
A = [-1 5 -1 8
    -4 -5 2 0
    1 2 -1  2];

[length_1, length_2]=size(A);

for i=1:length_1-1
    for z=2:length_1
        if A(i, i)==0
            t = A(1,:);
            A(1,:) = A(z,:);
            A(z,:) = t;
        end
    end

    for j=i+1:length_1
        A(j,:) = A(j,:)-A(i,:)*(A(j,i)/A(i, i));
    end
end


for j=length_1:-1:2
    for i=j-1:-1:1
        A(i,:) = A(i,:)-A(j,:)*(A(i,j)/A(j,j));
    end
end


for s=1:length_1
    A(s,:) = A(s,:)/A(s,s);
    x(s)=A(s,length_2);
end
disp('Metode Gauss-Jordan:');
disp('Matrix A: ');
disp(A);
disp('x, y, z :  ');
disp(x);


%Metode Cramer (Determinan)

A = [-1 5 -1
    -4 -5 2
    1 2 -1];

B = [8; 0; 2];

Ax = [8 5 -1
    0 -5 2
    2 2 -1];
Ay = [-1 8 -1
    -4 0 2
    1 2 -1];
Az = [-1 5 8
    -4 -5 0
    1 2 2];


detA=det(A);
x = det(Ax)/detA;
y = det(Ay)/detA;
z = det(Az)/detA;

disp('Metode Cramer (Determinan):');
disp('Determinan (A):');
disp(detA);
disp('x:');
disp(x);
disp('y:');
disp(y);
disp('z:');
disp(z);
