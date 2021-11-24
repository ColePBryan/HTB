with open("strange_code.txt") as f:
    user_string = f.readline().rstrip()
    computer_string = f.readline().rstrip()

for i in range(127):
    print("\n\ni = ", i)
    print("userstring: ")
    for ch in user_string:
        print(chr(ord(ch)+i), end='')
    print("\n\n---------------------------------\n\n")
    print("Computer string:")
    for ch in computer_string:
        print(chr(ord(ch)+i), end='')
    print("\n\n---------------------------------\n\n")
    print("")
    
for i in range(127):
    print("i = ", i)
    print("userstring: ")
    for ch in user_string:
        print(chr(ord(ch)-i), end='')
    print("\n\n---------------------------------\n\n")
    print("Computer string:")
    for ch in computer_string:
        print(chr(ord(ch)-i), end='')
    print("\n\n---------------------------------\n\n")
    print("")  