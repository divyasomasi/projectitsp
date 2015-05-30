function booo=not_there(tes,value,data)
booo=true;
tes=tes+1;
while(tes<length(data))
if(abs(data(tes)-value)<5)
    booo=false;
    %Sfprintf('hhaha');
    break;
end

    tes=tes+1;
end