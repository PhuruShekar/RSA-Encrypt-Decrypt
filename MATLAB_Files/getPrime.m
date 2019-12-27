function [p] = getPrime()
isPrime = false;
while ~isPrime
    p = randi([370 620],1);
    for a=2:12
        %disp("calculation is: ")
        %disp(mod(a^(p-1), p))
        if ~(expnFast(a, p-1, p) == 1)
            isPrime = false;
            break
        end
        
    end
    
    if a == 12
        isPrime = true;
    end
end