# Bounty Head

### Description

While having a home-brewed Mezcal in your favourite tavern, one of the most wanted cyborgs in the galaxy entered the room, he wanted to exact revenge on you for putting him away back in your bounty hunting days. A intense melee involving hand-to-hand combat ensued. Once you pinned him down, you tried to backdoor his system and neutralise him but he managed to escape. You successfully extracted the firmware from his system and pulled off the inversion cable for his torsional magnesium drive capacitor, so he mustn't have gone far. Your mission is to identify the suspect's current location and apprehend him.

### Given

Zip containing:
efs.bin
boot_loader

IP Address with single port

### Passive Footprinting

#### File: Boot_Loader

- Running `file` gives: ASCII Text
- File contains all ascii hex characters + line starts with :
- Results of `binwalk` show this is a Intel HEX data file
- used Intel HEX wiki page and vscode multicursor to disect the data from the intel surrounding format and changed it to only the hex ascii
- wrote a quick script to translate the hex ascii to a binary file
- analyzing new file with `binwalk` shows "ELF, 64-bit LSB shared object, AMD x86-64, version 1 (SYSV)"
- analyzing with `readelf` shows:

`❯ readelf -S --wide boot_loader.bin`

    There are 28 section headers, starting at offset 0x31d0:

    Section Headers:
    [Nr] Name              Type            Address          Off    Size   ES Flg Lk Inf Al
    [ 0]                   NULL            0000000000000000 000000 000000 00      0   0  0
    [ 1] .interp           PROGBITS        00000000000002a8 0002a8 00001c 00   A  0   0  1
    [ 2] .note.gnu.build-id NOTE            00000000000002c4 0002c4 000024 00   A  0   0  4
    [ 3] .note.ABI-tag     NOTE            00000000000002e8 0002e8 000020 00   A  0   0  4
    [ 4] .gnu.hash         GNU_HASH        0000000000000308 000308 000028 00   A  5   0  8
    [ 5] .dynsym           DYNSYM          0000000000000330 000330 000240 18   A  6   1  8
    [ 6] .dynstr           STRTAB          0000000000000570 000570 0000ff 00   A  0   0  1
    [ 7] .gnu.version      VERSYM          0000000000000670 000670 000030 02   A  5   0  2
    [ 8] .gnu.version_r    VERNEED         00000000000006a0 0006a0 000030 00   A  6   1  8
    [ 9] .rela.dyn         RELA            00000000000006d0 0006d0 0000d8 18   A  5   0  8
    [10] .rela.plt         RELA            00000000000007a8 0007a8 000198 18  AI  5  23  8
    [11] .init             PROGBITS        0000000000001000 001000 000017 00  AX  0   0  4
    [12] .plt              PROGBITS        0000000000001020 001020 000120 10  AX  0   0 16
    [13] .plt.got          PROGBITS        0000000000001140 001140 000008 08  AX  0   0  8
    [14] .text             PROGBITS        0000000000001150 001150 0005c1 00  AX  0   0 16
    [15] .fini             PROGBITS        0000000000001714 001714 000009 00  AX  0   0  4
    [16] .rodata           PROGBITS        0000000000002000 002000 0001f0 00   A  0   0  8
    [17] .eh_frame_hdr     PROGBITS        00000000000021f0 0021f0 000064 00   A  0   0  4
    [18] .eh_frame         PROGBITS        0000000000002258 002258 0001a8 00   A  0   0  8
    [19] .init_array       INIT_ARRAY      0000000000003de8 002de8 000008 08  WA  0   0  8
    [20] .fini_array       FINI_ARRAY      0000000000003df0 002df0 000008 08  WA  0   0  8
    [21] .dynamic          DYNAMIC         0000000000003df8 002df8 0001e0 10  WA  6   0  8
    [22] .got              PROGBITS        0000000000003fd8 002fd8 000028 08  WA  0   0  8
    [23] .got.plt          PROGBITS        0000000000004000 003000 0000a0 08  WA  0   0  8
    [24] .data             PROGBITS        00000000000040a0 0030a0 000010 00  WA  0   0  8
    [25] .bss              NOBITS          00000000000040b0 0030b0 000010 00  WA  0   0 16
    [26] .comment          PROGBITS        0000000000000000 0030b0 000026 01  MS  0   0  1
    [27] .shstrtab         STRTAB          0000000000000000 0030d6 0000f7 00      0   0  1
    Key to Flags:
    W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
    L (link order), O (extra OS processing required), G (group), T (TLS),
    C (compressed), x (unknown), o (OS specific), E (exclude),
    l (large), p (processor specific)

`❯ readelf -h boot_loader.bin`

    ELF Header:
        Magic:   7f 45 4c 46 02 01 01 00 00 00 00 00 00 00 00 00 
        Class:                             ELF64
        Data:                              2's complement, little endian
        Version:                           1 (current)
        OS/ABI:                            UNIX - System V
        ABI Version:                       0
        Type:                              DYN (Shared object file)
        Machine:                           Advanced Micro Devices X86-64
        Version:                           0x1
        Entry point address:               0x1150
        Start of program headers:          64 (bytes into file)
        Start of section headers:          12752 (bytes into file)
        Flags:                             0x0
        Size of this header:               64 (bytes)
        Size of program headers:           56 (bytes)
        Number of program headers:         11
        Size of section headers:           64 (bytes)
        Number of section headers:         28
        Section header string table index: 27

`❯ strings boot_loader.bin` (edited output to comma seperated)

    mgUa, libc.so.6, exit, sprintf, fopen, __isoc99_sscanf, puts, putchar, stdin, feof, fgets, strlen, getchar, malloc, system, fwrite, fread, sleep, __cxa_finalize, strcmp, __libc_start_main, GLIBC_2.7, GLIBC_2.2.5, _ITM_deregisterTMCloneTable, __gmon_start__, _ITM_registerTMCloneTable, u/UH, efs.bin, []A\A]A^A_, Loading File System., %02x, %2hhx, efs.bin, temp_03455.bin, Error in reading filesystem, Error in loading filesystem, WARNING: Failed to load DRAM, DRAM: 128MiB, WARNING: Caches not Enabled, Message: Caches been cleared, WARNING: Failed to load allocate memory, Flash: 128MiB, stty raw -echo min 0 time 10, stty sane, No working controllers found., Exiting.., User input detected. Launching loader., password: , Secure Boot 2020.01 (April 02 2020 - 13:14:12 +0800) , Starting autoboot, ;*3$", GCC: (Debian 9.2.1-22) 9.2.1 20200104, .shstrtab, .interp, .note.gnu.build-id, .note.ABI-tag, .gnu.hash, .dynsym, .dynstr, .gnu.version, .gnu.version_r, .rela.dyn, .rela.plt, .init, .plt.got, .text, .fini, .rodata, .eh_frame_hdr, .eh_frame, .init_array, .fini_array, .dynamic, .got.plt, .data, .bss, .comment

*possible vulnerability found `strcmp`*

`❯ objdump --disassemble boot_loader.bin > boot_loader.s`

- opened elf file with Ghidra for disasembly, found where the password is being compared. The password is encrypted and the decrypt algorithm is:

    for (local_c = 0; local_c < 0x10; local_c = local_c + 1) {
        local_38[(int)local_c] = *(byte *)((long)&local_88 + (long)(int)local_c) >> 1 ^ 0x39;
    }

- local_38 will contain the password when loop completes, local_88 is the encrypted password. The starting value of local_88 is `local_88 = 0x12f6a8129a3a98f4;`. The loop then overflows to the next value due to local_88 being too small. The final password is `Cu$t0mB00Tl04d3r` and can be entered by running boot_loader.bin and pressing the escape key when the "Starting autoboot" prompt pops up.

f4 -> 43 -> C
98 -> 75 -> u
3a -> 24 -> $
9a -> 74 -> t
12 -> 30 -> 0
a8 -> 6D -> m
f6 -> 42 -> B
12 -> 30 -> 0

 12 -> 30 -> 0
 da -> 54 -> T
 aa -> 6c -> l
 12 -> 30 -> 0
 1a -> 34 -> 4
 ba -> 64 -> d
 14 -> 33 -> 3
 96 -> 72 -> r

- after entering the password the efs.bin is decrypted into temp_03455

### File: efs.bin

- File is encrypted and needs to be decryped by running boot_loader file
- Encrypted file gets decrypted into temp_03455.bin
- running `binwalk temp_03455.bin` gives:
    DECIMAL       HEXADECIMAL     DESCRIPTION
    -------------------------------------------------------------------------------------------------------
    82384         0x141D0         U-Boot version string, "U-Boot 1.1.3 (Oct 18 2019 - 09:12:58)"
    132096        0x20400         LZMA compressed data, properties: 0x5D, dictionary size: 8388608 bytes, uncompressed size: 3634292 bytes
    1442304       0x160200        Squashfs filesystem, little endian, version 4.0, compression:xz, size: 1936774 bytes, 122 inodes, blocksize: 131072 bytes, created: 2020-06-17 03:40:36

- disecting temp_03455.bin using starting location from binwalk and count is the size until next item (start of next item - start of target item):
    - LZMA chunk`dd if=temp_03455.bin of=u-boot.bin.lzma bs=1 skip=132096 count=1310208` and use 7za to decompress due to garbage at end of file causing error with lzma/unlzma decompress
    - squashfs chunk `dd if=temp_03455.bin of=u-boot.squashfs bs=1 skip=1442304` and use unsquashfs to access filesystem


### File: u-boot.bin extracted from efs.bin

`❯ binwalk --signature u-boot.bin`

    DECIMAL       HEXADECIMAL     DESCRIPTION
    --------------------------------------------------------------------------------
    808374        0xC55B6         PGP RSA encrypted session key - keyid: 801000 202242C RSA Encrypt-Only 1024b
    907514        0xDD8FA         PGP RSA encrypted session key - keyid: 801000 205242C RSA Encrypt-Only 1024b
    2789480       0x2A9068        Linux kernel version 2.6.36
    2789656       0x2A9118        CRC32 polynomial table, little endian
    2831328       0x2B33E0        DES SP2, little endian
    2831840       0x2B35E0        DES SP1, little endian
    2852096       0x2B8500        CRC32 polynomial table, little endian
    3113880       0x2F8398        xz compressed data
    3174048       0x306EA0        Neighborly text, "NeighborSolicits6InDatagrams"
    3174068       0x306EB4        Neighborly text, "NeighborAdvertisementsorts"
    3177535       0x307C3F        Neighborly text, "neighbor %.2x%.2x.%pM lostrename link %s to %s"
    3629056       0x376000        ASCII cpio archive (SVR4 with no CRC), file name: "/dev", file name length: "0x00000005", file size: "0x00000000"
    3629172       0x376074        ASCII cpio archive (SVR4 with no CRC), file name: "/dev/console", file name length: "0x0000000D", file size: "0x00000000"
    3629296       0x3760F0        ASCII cpio archive (SVR4 with no CRC), file name: "/root", file name length: "0x00000006", file size: "0x00000000"
    3629412       0x376164        ASCII cpio archive (SVR4 with no CRC), file name: "TRAILER!!!", file name length: "0x0000000B", file size: "0x00000000"

### Filesystem: firmware_squashfs/squashfs-root

found hash for password running hashcat with `hashcat -a 3 -m 1710 dominic-f35426.hash --increment '?a?a?a?a?a?a?a?a'`
seems to be using mosquitto, can't figure out the password. Stopping challenge for now, here are final thoughts/details:

in squashfs/ etc/mosquitto/passwd there is the following password hash with user name:

dominic-f35426:$6$iUTv82apTZ0MdMP3$a+hjcpVv7OkX7pYipIPjFqisGfxLegS7FmRiLcOJBF3uaIwdMKpuQvVh0nTpglaUBsn18pssy2ZFvWlZleT8Fg==

I ran this through a converter to create dominic-f35426.hash that should work with netcat. I tried many password combos including a lot of word lists in /usr/share/wordlists, and tried with some of the rules in /usr/share/hashcat/rules and some of the masks in there too. I wasn't able to figure out the password. I dug through all other available items to try to find a password and didn't see anything. typing this to remember where I left off when I try again.