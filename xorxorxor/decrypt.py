flag_file_header = ''

# Open encrypted text, skipping the header text and translate to hex bytes
with open("../NuclearSale/extractedxor1") as file:
    for line in file:
        f1_encrypted_bytes=bytes.fromhex(line[len(flag_file_header):])

# Open encrypted text, skipping the header text and translate to hex bytes
with open("../NuclearSale/extractedxor2") as file:
    for line in file:
        f2_encrypted_bytes=bytes.fromhex(line[len(flag_file_header):])

# Open encrypted text, skipping the header text and translate to hex bytes
with open("../NuclearSale/extractedxor3") as file:
    for line in file:
        f3_encrypted_bytes=bytes.fromhex(line[len(flag_file_header):])



def extract_key_and_decode(encrypted_bytes):
    # Create key using known characters from HTB flag format
    # Key length is known to be 4 from the provided encryption class
    key_string = '.'
    key =[]
    for key_char in key_string:
        key.append(ord(key_char))

    # Use repeated key to decrypt cypher text with (a^k)^k = a xor property
    decrypted_string = ''
    for i in range(len(encrypted_bytes)):
        decrypted_string+= chr(encrypted_bytes[i]^key[i%len(key)])

    print(decrypted_string)



extract_key_and_decode(f1_encrypted_bytes)
extract_key_and_decode(f2_encrypted_bytes)
extract_key_and_decode(f3_encrypted_bytes)