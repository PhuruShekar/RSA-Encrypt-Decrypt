# RSA-Encrypt-Decrypt
RSA Encryption/Decryption made in MATLAB for our Network Security class

The matlab files contain each function used in our project and the PDF is our writeup of the project.

## Class descriptions

### expnFast(b,p,m) (auxilliary function)
- **Input:** base, power, mod
- **Output:** base B to the power P mod M

### getPrime() (auxilliary function)
- **Input:** N/A
- **Output:** a random prime between 370 and 620

### encrypt(plainText)
- **Input:** plaintext that we want to encrypt
- **Output:** Ciphertext, d, n
- D is the decryption key and N is the number we mod by while decrypting.

### decrypt(cipherText)
- **Input:** ciphertext we want to decrypt, n and d (outputs of encrypt)
- **Output:** plaintext


We were able to use our report as the plaintext (minus the character **'** as it was an escape character) and were able to both and encrypt and decrypt it successfully
