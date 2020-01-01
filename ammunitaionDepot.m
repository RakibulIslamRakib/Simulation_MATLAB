clc;
strike = input('How many strike you want : ');
hit = 0;
miss = 0;


fprintf('\n---------------------------------------------------------------------------\n');
fprintf('Bomb strike\t\t RNN\t\t X\t\t\t\t RNN\t\t Y\t\t RESULT');
fprintf('\n---------------------------------------------------------------------------\n');

for i = 1:strike
    
        %rand(1)×(b-a)+a
        randomX = rand(1)*(2+2)-2;
        X = int32(500*randomX);
        randomY = rand(1)*(2+2)-2;
        Y = int32(300*randomY);
        
        if (X<=500 && X>=-500 && Y<=300 && Y>=-300)
            hit = hit+1;
            result = 'HIT';
        
        else
            miss = miss+1;
            result = 'MISS';
        end
        
        
        fprintf('\n\t%d\t\t %f\t\t %d\t\t %f\t\t %d\t\t %s\n', i, randomX, X, randomY, Y, result);
      
end  % End For
percent = int64((hit/strike)*100);
fprintf('%d percent strikes on target\n', percent);