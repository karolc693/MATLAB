x = linspace(0, 360, 360);
y1 = 5+sin(x*pi/180);
y2 = 6+sin(x*pi/180);
%y2 = exp(-x/3);
%y3=5+sin(x).*y2;
sin(x*pi/180)
plot(x, y1);
figure(1);
hold all
plot(x,y2);
%area(x,);
%fill(x,y3,'r');
%axis square;
patch([x fliplr(x)], [y1 fliplr(y2)],'y')
hold off
