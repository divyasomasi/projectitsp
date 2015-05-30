function freq=diff_fund(maxind,data)
factor=50;
var=round(maxind/factor);
%var=1;
index=maxind-var;left_index=0;
while(index>1)
    if(data(index)>(0.1)*(data(maxind)) && data(index)>data(index+1) && data(index)>data(index-1))
        %fprintf('left \n');
        break;
    end
    index=index-1;
end
if(index~=1)
    left_index=index;
    %fprintf('left \n');
end
index=maxind+var;right_index=0;
while(index<length(data) && index<2*maxind)
    if(data(index)>(0.1)*(data(maxind)) && data(index)>data(index+1) && data(index)>data(index-1))
        %fprintf('right \n');
        break;
    end
    index=index+1;
end
if(index~=length(data) && index<2*maxind)
    right_index=index;
      %fprintf('right \n');
end
    if(left_index~=0 && right_index~=0)
        
        if(round((right_index-maxind)/(maxind-left_index))==1)
            %fprintf('both \n');
            freq=right_index-left_index;
            freq=round(freq/2);
        else
            fprintf('not found \n');
            freq=0;
        end
    
    else if(right_index~=0)
            freq=right_index-maxind;
            %fprintf('right \n');
        else if(left_index~=0)
                freq=maxind-left_index;
                %fprintf('left \n');
            else
            freq=maxind;
            %fprintf('none \n');
            end
        end
    end
    
       