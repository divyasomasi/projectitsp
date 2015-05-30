function rat=random(period,data)
%data=audioread('sound2.wav');period=47;
%data=data(44100*15:44100*25)*100;
sum =0;sum2=0;
ind=1;ind2=1;lim=floor(4410/period);ind3=0;
while(ind2<lim && ind3<period)
while(ind<period)
    sum =sum +(data(ind+ind3)-data(ind+ind3+ind2*(period)))^2;
    sum2=sum2+(data(ind+ind3))^2;
    ind=ind+1;
end
ind2=ind2+1;
ind3=ind3+1;
end

%fprintf('sum is %d and sum 2 is %d',sum ,sum2);

rat=sum/sum2;



    
    
