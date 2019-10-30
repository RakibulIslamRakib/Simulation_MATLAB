%let radious=1;area_of_circle=pi;quarter_or_circle_area=pi/4;
step=1;pos='';x=0.0;y=0.0;
in=0;out=0;
fprintf(' R1      R2     sqrt(1-R1^2)    In/Out\n');
while step<=20
    rnd1=randi([0.0,100.0])./100.0;
    xi=rnd1;
    rnd2=randi([0.0,100.0])./100.0;
    yi=rnd2;
    rt=sqrt(1-(yi*yi));
    if xi<=rt
        in = in +1;
        c = 'IN';
    else
        out = out +1;
        c = 'OUT';
    end
    fprintf('%.2f    %.2f      %.4f         %s\n',xi,yi,rt,c);
    
    step = step +1;
end
fprintf('The Value of PI is : %.4f\n',4*(in/(out+in)));
