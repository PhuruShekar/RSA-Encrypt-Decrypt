 function [plainText] = decrypt(cipherText, n, d)
plainText = [];
for c = cipherText
    %fprintf("decrypting: %d\n", c);
    plain =  expnFast(c, d, n);
    plainText = [plainText, char(plain)];
end



    