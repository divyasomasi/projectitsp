y_seg=audioread('sound5.m4a');
%y_seg=y(44100*15:44100*25);
count=0;
i=2;
array=[];n=1;m=1;

while(i<length(y_seg))
  
    a=sign(y_seg(i))*sign(y_seg(i-1));
        
    if (a<0)
        count=count+1;
       
    
    elseif (y_seg(i)==0)
           count=count+1;
          
    end
   if(rem(i,441)==0)
       
   array(end+1)=count*50;

count=0;
n=n+1;
   end
   
  if(rem(i,11025)==0)
      
       fprintf('frequency is %d   at %d \n ',mode(array),m); 
        array=[];
        m=m+1;
   end
    i=i+1;
end


fprintf('frequency is %d  \n',mode(array));        
        


    
    
        
    