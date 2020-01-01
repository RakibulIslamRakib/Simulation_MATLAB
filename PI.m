clc;
maximum_dot = input('How many times want to put Dot : ');
inside = 0;

for i = 1:maximum_dot
    x = rand;
    y = rand;
    if sqrt(x^2 + y^2) <= 1
        plot(x,y,'r.');
        inside = inside + 1;
    else 
        plot(x,y,'b.');
        hold on;
    end
end

fprintf('Pi = %f\n', inside / maximum_dot * 4);
