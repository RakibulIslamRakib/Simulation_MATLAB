clc;
max_dot = input('How many times do you want to put dot : ');

inside = 0;
a = input('Enter a : ');
b = input('Enter b : ');
h = input('Enter h : ');

%Draw Plot
for x = 1: .01:7
    y = x^3;
    plot(x,y, 'y.');
    hold on;
end

for i = 1:max_dot
    x = a + rand * (b-a);
    y = rand * h;
    
    if y <= x^3
        inside = inside+1;
        plot(x,y, 'r.');
    else
        plot(x,y, 'g.');
    end
    
    hold on;
end
    
integrationn = (inside/max_dot) * ((b-a) * h);
fprintf('\nIntegration is : %f\n', integrationn);