function [V,A] = cone(d,h) 
%oblicza objętość stożka o srednicy podstawy d i wysokosci h.
% V=cone(0.5,10.0)
disp(nargin)
if nargin < 1
    d=0.05
if nargin < 2
    h=0.1
end

r=d/2;
s=pi*r^2; 
V=1/3*h*s

end


