a = 0
b = 2*pi

N=15000;

x=linspace (a,b,N); 
x=x.';
y=exp(-x/pi) .* sin(x) ; 

h=x(2)-x(1);
D0=zeros(N);
D1=diag(1*ones(N-1,1), 1);
D2=diag(-1*ones(N-1,1), -1);
A=D0+D1+D2;
A(1,1)= -2;
A(1,2)= 2;
A(N,N-1)= -2;
A(N,N)= 2;
A=A/2/h;
A=sparse(A);
y1 = A*y;

figure(1);
clf;
plot(x,y);
hold all;
plot(x,y1);