function fr= frequency(data,t,int)
data=data(44100*(t):44100*(t+int))*100;
period=4;array4=[];

while(period<2205)
    array4(end+1)=random(period,data);
    period=period+1;
    
end
ind3=2;array5=[];ind4=0;
while(ind3<length(array4))
    if(array4(ind3-1)>array4(ind3) && array4(ind3+1)>array4(ind3))
        array5(end+1)=ind3-ind4;
        %ind4=ind3;
    end
    ind3=ind3+1;
end

%[C,I]=min(array4);
%I=I+4;
%I=sum/ind3;
%fprintf('C is %d and I is %d \n',C,period);

array5=array5+3;
I=array5(period_of_frequency(array5));
fprintf('I is %d',I);
fr=44100/I;

    