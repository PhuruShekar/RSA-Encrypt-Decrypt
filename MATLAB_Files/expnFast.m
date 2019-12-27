function [out] = expnFast(b,p,m)
    %cdn
    
    %how many times to square for quick exponentiation%
    numsquare = floor(log2(p));
    
    temp = b;
    
    for i=1:numsquare
        temp = mod((temp*temp),m);
    end

    %fprintf("numsq: %f",numsquare)
    for j= 2^numsquare + 1:p
        temp = mod((temp*b),m);
    end
    
    out = temp;
end