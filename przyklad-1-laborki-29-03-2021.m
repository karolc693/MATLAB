N=6;
D0=4*eye(N);
D1=diag(-2*ones(N-1,1), 1);
D2=diag(2*ones(N-1,1), -1);
D3= diag(ones(N*2,1), 2);
D4= diag(ones(N*2,1),-2);
D5=D0+D1+D2+D3+D4;
