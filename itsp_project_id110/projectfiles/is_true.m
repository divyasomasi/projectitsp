function boo= is_true(tes,data)
boo=true;factor=2;
while(factor*data(tes)<data(length(data)) && factor<5)
     %fprintf('hehe2');
    if(not_there(tes,factor*data(tes),data))
        boo= false;
      
        break;
    end
    factor=factor+1;
end

    