V1=9.0; %Volt
V2= 1.5; %Volt 
Imax=0.1;
R1= 1000; %Ohm
R2=1000; %Ohm
R3=1000; %Ohm

A=[ 
    -1 0 -1 +1 0
    0 -1 +1 0 -1
    R1 0 0 0 0
    0 R2 0 0 0
    0 0 R3 0 0 
    ];
b = [
    0
    0
    V1
    V2
    V1-V2
    ];
I = A \ b
if any (abs(I)>=Imax ) 
    disp('natężenie prądu przekroczone');
else
    disp('natężenie prądu w dopuszczalnym zakresie');
end
