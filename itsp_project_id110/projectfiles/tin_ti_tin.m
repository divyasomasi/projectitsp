tin=audioread('sound6.wav');
titi=tin(44100*3:44100*6)*1000;
q=1;period=5;
while(period<2205)
    if(is_period(period,titi))
        fprintf('final period is %d \n',period);
        break;
    else
        
        fprintf('period is %d \n',period);
    end
    period=period+1;
end
fprintf('frequency is %d',44100/period);

    