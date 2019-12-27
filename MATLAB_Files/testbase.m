function [] = testbase()
    
    num =  3037000499;
  
    %3037000499 <- largest number we can square?
    %4294967291 <- prime
    %4294967296 
    %prime: 3037000493
    %prime: 3037000453
    
    for i=0:100
        temp = num*num;
        fprintf("Num: %d  Sqr: %d\n",num, temp)
        num = num+1;
    end
    
end

