import sys

EXTRACTED_ENCRPYTED_DATA= (
                            0x6b65813f4fe991efe2042f79988a3b2f2559d358e55f2fa373e53b1965b5bb2b175cf039,
                            0xfd034c32294bfa6ab44a28892e75c4f24d8e71b41cfb9a81a634b90e6238443a813a3d34,
                            0xde328f76159108f7653a5883decb8dec06b0fd9bc8d0dd7dade1f04836b8a07da20bfe70
                        )

key = EXTRACTED_ENCRPYTED_DATA[1] ^ EXTRACTED_ENCRPYTED_DATA[2]

plaintext = key ^ EXTRACTED_ENCRPYTED_DATA[0]

print(plaintext.to_bytes(36, sys.byteorder).decode("utf-8")[::-1])
