function boolean=is_period(period,data)
array3=[];in=2;
while(in<period)
new=round(period/in);
new=random(new,data);
array3(end+1)=round(new/random(period,data));
in=in+1;
end
boolean=round(min(array3));
    
    
