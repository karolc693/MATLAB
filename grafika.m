phi_v = linspace(0, 360, 72);
r_v = linspace(0, 1, 50);

[phi, r] = meshgrid(phi_v, r_v);

x = r .* cosd(phi);
y = r .* sind(phi);
z1 = 1 - r;
z1(x > 0 & y > 0) = NaN;

figure(1);
clf;
surf(x, y, z1);
xlabel 'x';
ylabel 'y';
zlabel 'z';
hold all;

z2 = (1 - r) / 4;
z2(x > 0 & y > 0) = NaN;
surf(x, y, z2);
colormap hot;

z3 = (1 - r);
contour(x, y, z3);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      loops=4000;
M(loops) = struct('cdata',[],'colormap',[]);
for j=1:loops
    view(85+0.25*j, 36.5859);
    drawnow;
    M(j)= getframe;
end
pause
movie(M);