flag_file_header = 'flag: '

# Open encrypted text, skipping the header text and translate to hex bytes
with open("./challenge_files/output.txt") as file:
    for line in file:
        encrypted_bytes=bytes.fromhex(line[len(flag_file_header):])

# Create key using known characters from HTB flag format
# Key length is known to be 4 from the provided encryption class
key=['0']*4
key[0] = ord('H') ^ encrypted_bytes[0]
key[1] = ord('T') ^ encrypted_bytes[1]
key[2] = ord('B') ^ encrypted_bytes[2]
key[3] = ord('{') ^ encrypted_bytes[3]

# Use repeated key to decrypt cypher text with (a^k)^k = a xor property
decrypted_string = ''
for i in range(len(encrypted_bytes)):
    decrypted_string+= chr(encrypted_bytes[i]^key[i%4])

print(decrypted_string)
