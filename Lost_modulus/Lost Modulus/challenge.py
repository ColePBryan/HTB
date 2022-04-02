#!/usr/bin/python3
from Crypto.Util.number import getPrime, long_to_bytes, inverse
import gmpy2
flag = open('/home/human/HTB/Lost_modulus/Lost Modulus/output.txt', 'r').read().strip().encode()

def iroot(k, n):
    u, s = n, n+1
    old_u = 0
    print("starting iroot")
    while u < s:
        s = u
        t = (k-1) * s + n // pow(s, k-1)
        u = t // k
        print("something")
        if u > old_u:
            print(u, ' ', end='')
            old_u = u*10
    print()
    return s


class RSA:
    def __init__(self):
        self.p = getPrime(512)
        self.q = getPrime(512)
        # self.p = 0
        # self.q = 0
        self.e = 3
        self.n = self.p * self.q
        self.d = inverse(self.e, (self.p-1)*(self.q-1))
    def encrypt(self, data: bytes) -> bytes:
        pt = int(data.hex(), 16)
        ct = pow(pt, self.e, self.n)
        return long_to_bytes(ct)
    def decrypt(self, data: bytes) -> bytes:
        ct = int(data.hex(), 16)
        # because they used a small e, a root attack is possible
        pt = gmpy2.iroot(ct, self.e)[0]
        print(pt)
        # pt = int(round(ct**(1/self.e)))
        # pt = pow(ct, self.d, self.n)
        return long_to_bytes(pt)

def main():
    crypto = RSA()
    print ('Flag:', crypto.decrypt(bytes.fromhex('05c61636499a82088bf4388203a93e67bf046f8c49f62857681ec9aaaa40b4772933e0abc83e938c84ff8e67e5ad85bd6eca167585b0cc03eb1333b1b1462d9d7c25f44e53bcb568f0f05219c0147f7dc3cbad45dec2f34f03bcadcbba866dd0c566035c8122d68255ada7d18954ad604965')).hex())

if __name__ == '__main__':
    main()
