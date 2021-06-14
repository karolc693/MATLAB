function dxdt=oscylator (t,x)
global omegaO;
dxdt= zeros (2,1);
dxdt(1)=x(2);
dxdt(2)=-omegaO^2*x(1);
end 