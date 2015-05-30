z=audioread('sound6.m4a');
%z=zz(44100*20:44100*30);
c=0;
n=1;
while(n<length(z))
    
   if(rem(n,44100)==0)
       sum=0;i=n-44099;
      while(i<n+1)
          sum=sum+acos((z(i)+z(i+2))/(2*z(i+1)));
          i=i+1;
      end
      
       fprintf('frequency is %d   at %d \n ',((sum*7)/44),n/44100);
       
   end
   n=n+1;
end

    
