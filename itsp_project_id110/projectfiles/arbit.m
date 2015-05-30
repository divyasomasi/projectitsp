a=audioread('sound6.wav');
a=a(44100*3:44100*3+441);
i=2;count=0;
while(i<length(a))
    if(a(i)>a(i-1) && a(i+1)<a(i))
        count=count+1;
        fprintf('y is %d   at %d \n ',a(i)*1000,i);
        
    end
    
    if(rem(i,44100)==0)
        fprintf('count is %d   at %d \n ',count,i/44100); 
        count=0;
    end
    i=i+1;
end
