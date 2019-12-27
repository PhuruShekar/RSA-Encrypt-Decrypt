function [cipherText, d, n] = encrypt(plaintext)
p =  getPrime();
q =  getPrime();
    while q == p
        q = getPrime();
    end
n = p*q;
phi = (p-1)*(q-1);
e = randi([2 phi-1],1);
while ~(gcd(e,phi)==1)
    e = randi([2 phi-1],1);
    [gc, x, y] = gcd(e,phi);
    if gc == 1
        break
    end
end
% fprintf("p: %d \t\t q: %d \t\t e: %d, gcd: %d\n",p,q,e, gcd(e,phi));
[g, d , d2] = gcd(e, phi);
if d < 0
    d=mod(d, phi)
end
% fprintf("should be 1: %d\n", d2*phi + d*e);
cipherText = [ ];
for c = char(plaintext)
    cipher =  expnFast(c, e, n);
    cipherText = [cipherText, cipher];
end