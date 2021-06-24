
'''
    Challenge provided encryption function
'''
def encryption(plain_char):
    return (123 * plain_char + 18) % 256

'''
    Create a full map of each output to its input
'''
def create_encryption_map()->dict:
    encryption_map={}
    for input in range(256):
        output = chr(encryption(input))
        encryption_map[output]=chr(input)
    return encryption_map

if __name__ == "__main__":
    encryption_map=create_encryption_map()
    with open("./challenge_files/msg.enc") as encrypted_file:
        for encrypted_line in encrypted_file:
            encrypted_bytes=bytes.fromhex(encrypted_line)
            for byte in encrypted_bytes:
                print(encryption_map[chr(byte)], end='')
    print("\n")