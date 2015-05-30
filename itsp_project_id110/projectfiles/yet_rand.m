tin=audioread('sound2.wav');
t=15;
titi=tin(44100*(t):44100*(t+0.1))*100;
period=5;array2=[];

while(period<2205)
    array2(end+1)=random(period,titi);
    period=period+1;
    
end
ind3=2;array5=[];ind4=0;
while(ind3<length(array2))
    if(array2(ind3-1)>array2(ind3) && array2(ind3+1)>array2(ind3))
        array5(end+1)=ind3-ind4;
        %ind4=ind3;
    end
    ind3=ind3+1;
end

%[C,I]=min(array2);
array5=array5+4;
I=array5(period_of_frequency(array5));
%fprintf('C is %d and I is %d \n',C,I);
%fprintf('is period is %d ',is_period(I,titi));

fprintf('I is%d',I)
fprintf('frequency is %d',44100/I);
    