%left=(1--20),right=(21--50),up=(51--65),down=(66--80),back=(81-90),forward=(91--100)
step = 1;
c='';pos_y=0;pos_x=0;pos_z=0;
fprintf('step        Random_no        direction        pos_Z        pos_Y         pos_Z\n');
while step<=20
    rnd = randi([1,100]);
    if rnd>=1 && rnd<=20
        c='L';pos_x = pos_x-1;
    elseif rnd>=21 && rnd<=50
        c='R';pos_x = pos_x + 1; 
    elseif rnd>=51 && rnd<=65
        c='U';pos_z = pos_z +1;  
    elseif rnd>=66 && rnd<=80
        c='D';pos_z = pos_z - 1;  
    elseif rnd>=81 && rnd<=90
        c='B';pos_y = pos_y -1;
    else 
        c='F';pos_y = pos_y +1;        
    end
    fprintf(' %d             %d                 %c             %d            %d            %d\n',step,rnd,c,pos_x,pos_y,pos_z);
    step = step +1;
end 
disp('After 20 step:\n')
fprintf(' %d             %d                 %c             %d           %d           %d\n',step-1,rnd,c,pos_x,pos_y,pos_z);
