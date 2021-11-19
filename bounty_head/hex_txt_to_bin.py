import binascii

with open('boot_loader.bin.txt') as hex_txt, open("boot_loader.bin", "wb") as hex_bin:
    for line in hex_txt:
        chunk = binascii.unhexlify(line.rstrip())
        hex_bin.write(chunk)