function [out] = expn(b,p,m)
   
    temp = 1;
    
    for i=1:p
        temp = mod((temp*b),m);
    end
    
    out = temp;
end