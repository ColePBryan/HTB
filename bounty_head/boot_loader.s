
boot_loader.bin:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <.init>:
    1000:	48 83 ec 08          	sub    $0x8,%rsp
    1004:	48 8b 05 dd 2f 00 00 	mov    0x2fdd(%rip),%rax        # 3fe8 <__cxa_finalize@plt+0x2ea8>
    100b:	48 85 c0             	test   %rax,%rax
    100e:	74 02                	je     1012 <putchar@plt-0x1e>
    1010:	ff d0                	callq  *%rax
    1012:	48 83 c4 08          	add    $0x8,%rsp
    1016:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <putchar@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <__cxa_finalize@plt+0x2ec8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <__cxa_finalize@plt+0x2ed0>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <putchar@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <__cxa_finalize@plt+0x2ed8>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001040 <puts@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <__cxa_finalize@plt+0x2ee0>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001050 <fread@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <__cxa_finalize@plt+0x2ee8>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001060 <strlen@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <__cxa_finalize@plt+0x2ef0>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001070 <system@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <__cxa_finalize@plt+0x2ef8>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001080 <printf@plt>:
    1080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4040 <__cxa_finalize@plt+0x2f00>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001090 <fgets@plt>:
    1090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4048 <__cxa_finalize@plt+0x2f08>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

00000000000010a0 <strcmp@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4050 <__cxa_finalize@plt+0x2f10>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

00000000000010b0 <getchar@plt>:
    10b0:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 4058 <__cxa_finalize@plt+0x2f18>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

00000000000010c0 <feof@plt>:
    10c0:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 4060 <__cxa_finalize@plt+0x2f20>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

00000000000010d0 <malloc@plt>:
    10d0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 4068 <__cxa_finalize@plt+0x2f28>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

00000000000010e0 <__isoc99_sscanf@plt>:
    10e0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 4070 <__cxa_finalize@plt+0x2f30>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

00000000000010f0 <fopen@plt>:
    10f0:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 4078 <__cxa_finalize@plt+0x2f38>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001100 <sprintf@plt>:
    1100:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 4080 <__cxa_finalize@plt+0x2f40>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001110 <exit@plt>:
    1110:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 4088 <__cxa_finalize@plt+0x2f48>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001120 <fwrite@plt>:
    1120:	ff 25 6a 2f 00 00    	jmpq   *0x2f6a(%rip)        # 4090 <__cxa_finalize@plt+0x2f50>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <putchar@plt-0x10>

0000000000001130 <sleep@plt>:
    1130:	ff 25 62 2f 00 00    	jmpq   *0x2f62(%rip)        # 4098 <__cxa_finalize@plt+0x2f58>
    1136:	68 10 00 00 00       	pushq  $0x10
    113b:	e9 e0 fe ff ff       	jmpq   1020 <putchar@plt-0x10>

Disassembly of section .plt.got:

0000000000001140 <__cxa_finalize@plt>:
    1140:	ff 25 b2 2e 00 00    	jmpq   *0x2eb2(%rip)        # 3ff8 <__cxa_finalize@plt+0x2eb8>
    1146:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001150 <.text>:
    1150:	31 ed                	xor    %ebp,%ebp
    1152:	49 89 d1             	mov    %rdx,%r9
    1155:	5e                   	pop    %rsi
    1156:	48 89 e2             	mov    %rsp,%rdx
    1159:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    115d:	50                   	push   %rax
    115e:	54                   	push   %rsp
    115f:	4c 8d 05 aa 05 00 00 	lea    0x5aa(%rip),%r8        # 1710 <__cxa_finalize@plt+0x5d0>
    1166:	48 8d 0d 43 05 00 00 	lea    0x543(%rip),%rcx        # 16b0 <__cxa_finalize@plt+0x570>
    116d:	48 8d 3d cb 04 00 00 	lea    0x4cb(%rip),%rdi        # 163f <__cxa_finalize@plt+0x4ff>
    1174:	ff 15 66 2e 00 00    	callq  *0x2e66(%rip)        # 3fe0 <__cxa_finalize@plt+0x2ea0>
    117a:	f4                   	hlt    
    117b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1180:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 40b0 <stdin@@GLIBC_2.2.5>
    1187:	48 8d 05 22 2f 00 00 	lea    0x2f22(%rip),%rax        # 40b0 <stdin@@GLIBC_2.2.5>
    118e:	48 39 f8             	cmp    %rdi,%rax
    1191:	74 15                	je     11a8 <__cxa_finalize@plt+0x68>
    1193:	48 8b 05 3e 2e 00 00 	mov    0x2e3e(%rip),%rax        # 3fd8 <__cxa_finalize@plt+0x2e98>
    119a:	48 85 c0             	test   %rax,%rax
    119d:	74 09                	je     11a8 <__cxa_finalize@plt+0x68>
    119f:	ff e0                	jmpq   *%rax
    11a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11a8:	c3                   	retq   
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11b0:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 40b0 <stdin@@GLIBC_2.2.5>
    11b7:	48 8d 35 f2 2e 00 00 	lea    0x2ef2(%rip),%rsi        # 40b0 <stdin@@GLIBC_2.2.5>
    11be:	48 29 fe             	sub    %rdi,%rsi
    11c1:	48 89 f0             	mov    %rsi,%rax
    11c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11c8:	48 c1 f8 03          	sar    $0x3,%rax
    11cc:	48 01 c6             	add    %rax,%rsi
    11cf:	48 d1 fe             	sar    %rsi
    11d2:	74 14                	je     11e8 <__cxa_finalize@plt+0xa8>
    11d4:	48 8b 05 15 2e 00 00 	mov    0x2e15(%rip),%rax        # 3ff0 <__cxa_finalize@plt+0x2eb0>
    11db:	48 85 c0             	test   %rax,%rax
    11de:	74 08                	je     11e8 <__cxa_finalize@plt+0xa8>
    11e0:	ff e0                	jmpq   *%rax
    11e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11e8:	c3                   	retq   
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11f0:	80 3d c1 2e 00 00 00 	cmpb   $0x0,0x2ec1(%rip)        # 40b8 <stdin@@GLIBC_2.2.5+0x8>
    11f7:	75 2f                	jne    1228 <__cxa_finalize@plt+0xe8>
    11f9:	55                   	push   %rbp
    11fa:	48 83 3d f6 2d 00 00 	cmpq   $0x0,0x2df6(%rip)        # 3ff8 <__cxa_finalize@plt+0x2eb8>
    1201:	00 
    1202:	48 89 e5             	mov    %rsp,%rbp
    1205:	74 0c                	je     1213 <__cxa_finalize@plt+0xd3>
    1207:	48 8b 3d 9a 2e 00 00 	mov    0x2e9a(%rip),%rdi        # 40a8 <__cxa_finalize@plt+0x2f68>
    120e:	e8 2d ff ff ff       	callq  1140 <__cxa_finalize@plt>
    1213:	e8 68 ff ff ff       	callq  1180 <__cxa_finalize@plt+0x40>
    1218:	c6 05 99 2e 00 00 01 	movb   $0x1,0x2e99(%rip)        # 40b8 <stdin@@GLIBC_2.2.5+0x8>
    121f:	5d                   	pop    %rbp
    1220:	c3                   	retq   
    1221:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1228:	c3                   	retq   
    1229:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1230:	e9 7b ff ff ff       	jmpq   11b0 <__cxa_finalize@plt+0x70>
    1235:	55                   	push   %rbp
    1236:	48 89 e5             	mov    %rsp,%rbp
    1239:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
    1240:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
    1247:	48 b8 65 66 73 2e 62 	movabs $0x6e69622e736665,%rax
    124e:	69 6e 00 
    1251:	ba 00 00 00 00       	mov    $0x0,%edx
    1256:	48 89 45 90          	mov    %rax,-0x70(%rbp)
    125a:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
    125e:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
    1265:	48 b8 f4 98 3a 9a 12 	movabs $0x12f6a8129a3a98f4,%rax
    126c:	a8 f6 12 
    126f:	48 ba 12 da aa 12 1a 	movabs $0x9614ba1a12aada12,%rdx
    1276:	ba 14 96 
    1279:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    127d:	48 89 55 88          	mov    %rdx,-0x78(%rbp)
    1281:	c7 45 d8 10 00 00 00 	movl   $0x10,-0x28(%rbp)
    1288:	8b 45 d8             	mov    -0x28(%rbp),%eax
    128b:	48 98                	cltq   
    128d:	48 89 c7             	mov    %rax,%rdi
    1290:	e8 3b fe ff ff       	callq  10d0 <malloc@plt>
    1295:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    1299:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    12a0:	eb 26                	jmp    12c8 <__cxa_finalize@plt+0x188>
    12a2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12a5:	48 98                	cltq   
    12a7:	0f b6 44 05 80       	movzbl -0x80(%rbp,%rax,1),%eax
    12ac:	d0 e8                	shr    %al
    12ae:	83 f0 39             	xor    $0x39,%eax
    12b1:	89 c1                	mov    %eax,%ecx
    12b3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12b6:	48 63 d0             	movslq %eax,%rdx
    12b9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    12bd:	48 01 d0             	add    %rdx,%rax
    12c0:	89 ca                	mov    %ecx,%edx
    12c2:	88 10                	mov    %dl,(%rax)
    12c4:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    12c8:	8b 45 fc             	mov    -0x4(%rbp),%eax
    12cb:	83 f8 0f             	cmp    $0xf,%eax
    12ce:	76 d2                	jbe    12a2 <__cxa_finalize@plt+0x162>
    12d0:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    12d4:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    12db:	48 89 d6             	mov    %rdx,%rsi
    12de:	48 89 c7             	mov    %rax,%rdi
    12e1:	e8 ba fd ff ff       	callq  10a0 <strcmp@plt>
    12e6:	85 c0                	test   %eax,%eax
    12e8:	0f 85 af 01 00 00    	jne    149d <__cxa_finalize@plt+0x35d>
    12ee:	48 8d 3d 13 0d 00 00 	lea    0xd13(%rip),%rdi        # 2008 <__cxa_finalize@plt+0xec8>
    12f5:	e8 46 fd ff ff       	callq  1040 <puts@plt>
    12fa:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    1301:	48 89 c7             	mov    %rax,%rdi
    1304:	e8 57 fd ff ff       	callq  1060 <strlen@plt>
    1309:	89 45 cc             	mov    %eax,-0x34(%rbp)
    130c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1313:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    131a:	eb 47                	jmp    1363 <__cxa_finalize@plt+0x223>
    131c:	8b 45 f8             	mov    -0x8(%rbp),%eax
    131f:	48 63 d0             	movslq %eax,%rdx
    1322:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
    1329:	48 01 d0             	add    %rdx,%rax
    132c:	0f b6 00             	movzbl (%rax),%eax
    132f:	0f be c0             	movsbl %al,%eax
    1332:	0f b6 c0             	movzbl %al,%eax
    1335:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1338:	48 63 d2             	movslq %edx,%rdx
    133b:	48 8d 8d 00 ff ff ff 	lea    -0x100(%rbp),%rcx
    1342:	48 01 d1             	add    %rdx,%rcx
    1345:	89 c2                	mov    %eax,%edx
    1347:	48 8d 35 d0 0c 00 00 	lea    0xcd0(%rip),%rsi        # 201e <__cxa_finalize@plt+0xede>
    134e:	48 89 cf             	mov    %rcx,%rdi
    1351:	b8 00 00 00 00       	mov    $0x0,%eax
    1356:	e8 a5 fd ff ff       	callq  1100 <sprintf@plt>
    135b:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    135f:	83 45 f4 02          	addl   $0x2,-0xc(%rbp)
    1363:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1366:	3b 45 cc             	cmp    -0x34(%rbp),%eax
    1369:	7c b1                	jl     131c <__cxa_finalize@plt+0x1dc>
    136b:	48 8d 85 00 ff ff ff 	lea    -0x100(%rbp),%rax
    1372:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1376:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
    137d:	00 
    137e:	eb 30                	jmp    13b0 <__cxa_finalize@plt+0x270>
    1380:	48 8d 95 70 ff ff ff 	lea    -0x90(%rbp),%rdx
    1387:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    138b:	48 01 c2             	add    %rax,%rdx
    138e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1392:	48 8d 35 8a 0c 00 00 	lea    0xc8a(%rip),%rsi        # 2023 <__cxa_finalize@plt+0xee3>
    1399:	48 89 c7             	mov    %rax,%rdi
    139c:	b8 00 00 00 00       	mov    $0x0,%eax
    13a1:	e8 3a fd ff ff       	callq  10e0 <__isoc99_sscanf@plt>
    13a6:	48 83 45 e8 02       	addq   $0x2,-0x18(%rbp)
    13ab:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
    13b0:	48 83 7d e0 0f       	cmpq   $0xf,-0x20(%rbp)
    13b5:	76 c9                	jbe    1380 <__cxa_finalize@plt+0x240>
    13b7:	48 8d 05 6b 0c 00 00 	lea    0xc6b(%rip),%rax        # 2029 <__cxa_finalize@plt+0xee9>
    13be:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    13c2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    13c6:	48 8d 35 64 0c 00 00 	lea    0xc64(%rip),%rsi        # 2031 <__cxa_finalize@plt+0xef1>
    13cd:	48 89 c7             	mov    %rax,%rdi
    13d0:	e8 1b fd ff ff       	callq  10f0 <fopen@plt>
    13d5:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    13d9:	48 8d 35 54 0c 00 00 	lea    0xc54(%rip),%rsi        # 2034 <__cxa_finalize@plt+0xef4>
    13e0:	48 8d 3d 50 0c 00 00 	lea    0xc50(%rip),%rdi        # 2037 <__cxa_finalize@plt+0xef7>
    13e7:	e8 04 fd ff ff       	callq  10f0 <fopen@plt>
    13ec:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    13f0:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
    13f5:	0f 85 82 00 00 00    	jne    147d <__cxa_finalize@plt+0x33d>
    13fb:	48 8d 3d 44 0c 00 00 	lea    0xc44(%rip),%rdi        # 2046 <__cxa_finalize@plt+0xf06>
    1402:	e8 39 fc ff ff       	callq  1040 <puts@plt>
    1407:	e9 91 00 00 00       	jmpq   149d <__cxa_finalize@plt+0x35d>
    140c:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    1410:	48 8d 85 6f ff ff ff 	lea    -0x91(%rbp),%rax
    1417:	48 89 d1             	mov    %rdx,%rcx
    141a:	ba 01 00 00 00       	mov    $0x1,%edx
    141f:	be 01 00 00 00       	mov    $0x1,%esi
    1424:	48 89 c7             	mov    %rax,%rdi
    1427:	e8 24 fc ff ff       	callq  1050 <fread@plt>
    142c:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
    1433:	eb 20                	jmp    1455 <__cxa_finalize@plt+0x315>
    1435:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1438:	48 98                	cltq   
    143a:	0f b6 94 05 70 ff ff 	movzbl -0x90(%rbp,%rax,1),%edx
    1441:	ff 
    1442:	0f b6 85 6f ff ff ff 	movzbl -0x91(%rbp),%eax
    1449:	31 d0                	xor    %edx,%eax
    144b:	88 85 6f ff ff ff    	mov    %al,-0x91(%rbp)
    1451:	83 45 dc 01          	addl   $0x1,-0x24(%rbp)
    1455:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1458:	83 f8 0f             	cmp    $0xf,%eax
    145b:	76 d8                	jbe    1435 <__cxa_finalize@plt+0x2f5>
    145d:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    1461:	48 8d 85 6f ff ff ff 	lea    -0x91(%rbp),%rax
    1468:	48 89 d1             	mov    %rdx,%rcx
    146b:	ba 01 00 00 00       	mov    $0x1,%edx
    1470:	be 01 00 00 00       	mov    $0x1,%esi
    1475:	48 89 c7             	mov    %rax,%rdi
    1478:	e8 a3 fc ff ff       	callq  1120 <fwrite@plt>
    147d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    1481:	48 89 c7             	mov    %rax,%rdi
    1484:	e8 37 fc ff ff       	callq  10c0 <feof@plt>
    1489:	85 c0                	test   %eax,%eax
    148b:	0f 84 7b ff ff ff    	je     140c <__cxa_finalize@plt+0x2cc>
    1491:	48 8d 3d ca 0b 00 00 	lea    0xbca(%rip),%rdi        # 2062 <__cxa_finalize@plt+0xf22>
    1498:	e8 a3 fb ff ff       	callq  1040 <puts@plt>
    149d:	c9                   	leaveq 
    149e:	c3                   	retq   
    149f:	55                   	push   %rbp
    14a0:	48 89 e5             	mov    %rsp,%rbp
    14a3:	48 83 ec 10          	sub    $0x10,%rsp
    14a7:	bf 00 02 00 00       	mov    $0x200,%edi
    14ac:	e8 1f fc ff ff       	callq  10d0 <malloc@plt>
    14b1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    14b5:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    14ba:	75 18                	jne    14d4 <__cxa_finalize@plt+0x394>
    14bc:	48 8d 3d bb 0b 00 00 	lea    0xbbb(%rip),%rdi        # 207e <__cxa_finalize@plt+0xf3e>
    14c3:	e8 78 fb ff ff       	callq  1040 <puts@plt>
    14c8:	bf 01 00 00 00       	mov    $0x1,%edi
    14cd:	e8 5e fc ff ff       	callq  1130 <sleep@plt>
    14d2:	eb 20                	jmp    14f4 <__cxa_finalize@plt+0x3b4>
    14d4:	bf 0a 00 00 00       	mov    $0xa,%edi
    14d9:	e8 52 fb ff ff       	callq  1030 <putchar@plt>
    14de:	48 8d 3d b6 0b 00 00 	lea    0xbb6(%rip),%rdi        # 209b <__cxa_finalize@plt+0xf5b>
    14e5:	e8 56 fb ff ff       	callq  1040 <puts@plt>
    14ea:	bf 01 00 00 00       	mov    $0x1,%edi
    14ef:	e8 3c fc ff ff       	callq  1130 <sleep@plt>
    14f4:	90                   	nop
    14f5:	c9                   	leaveq 
    14f6:	c3                   	retq   
    14f7:	55                   	push   %rbp
    14f8:	48 89 e5             	mov    %rsp,%rbp
    14fb:	48 83 ec 10          	sub    $0x10,%rsp
    14ff:	bf 00 02 00 00       	mov    $0x200,%edi
    1504:	e8 c7 fb ff ff       	callq  10d0 <malloc@plt>
    1509:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    150d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1512:	75 18                	jne    152c <__cxa_finalize@plt+0x3ec>
    1514:	48 8d 3d 8d 0b 00 00 	lea    0xb8d(%rip),%rdi        # 20a8 <__cxa_finalize@plt+0xf68>
    151b:	e8 20 fb ff ff       	callq  1040 <puts@plt>
    1520:	bf 00 00 00 00       	mov    $0x0,%edi
    1525:	e8 06 fc ff ff       	callq  1130 <sleep@plt>
    152a:	eb 16                	jmp    1542 <__cxa_finalize@plt+0x402>
    152c:	48 8d 3d 91 0b 00 00 	lea    0xb91(%rip),%rdi        # 20c4 <__cxa_finalize@plt+0xf84>
    1533:	e8 08 fb ff ff       	callq  1040 <puts@plt>
    1538:	bf 00 00 00 00       	mov    $0x0,%edi
    153d:	e8 ee fb ff ff       	callq  1130 <sleep@plt>
    1542:	90                   	nop
    1543:	c9                   	leaveq 
    1544:	c3                   	retq   
    1545:	55                   	push   %rbp
    1546:	48 89 e5             	mov    %rsp,%rbp
    1549:	48 83 ec 10          	sub    $0x10,%rsp
    154d:	bf 00 02 00 00       	mov    $0x200,%edi
    1552:	e8 79 fb ff ff       	callq  10d0 <malloc@plt>
    1557:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    155b:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    1560:	75 0e                	jne    1570 <__cxa_finalize@plt+0x430>
    1562:	48 8d 3d 7f 0b 00 00 	lea    0xb7f(%rip),%rdi        # 20e8 <__cxa_finalize@plt+0xfa8>
    1569:	e8 d2 fa ff ff       	callq  1040 <puts@plt>
    156e:	eb 0c                	jmp    157c <__cxa_finalize@plt+0x43c>
    1570:	48 8d 3d 99 0b 00 00 	lea    0xb99(%rip),%rdi        # 2110 <__cxa_finalize@plt+0xfd0>
    1577:	e8 c4 fa ff ff       	callq  1040 <puts@plt>
    157c:	90                   	nop
    157d:	c9                   	leaveq 
    157e:	c3                   	retq   
    157f:	55                   	push   %rbp
    1580:	48 89 e5             	mov    %rsp,%rbp
    1583:	48 83 ec 20          	sub    $0x20,%rsp
    1587:	48 8d 3d 90 0b 00 00 	lea    0xb90(%rip),%rdi        # 211e <__cxa_finalize@plt+0xfde>
    158e:	e8 dd fa ff ff       	callq  1070 <system@plt>
    1593:	e8 18 fb ff ff       	callq  10b0 <getchar@plt>
    1598:	89 45 fc             	mov    %eax,-0x4(%rbp)
    159b:	83 7d fc 1b          	cmpl   $0x1b,-0x4(%rbp)
    159f:	74 38                	je     15d9 <__cxa_finalize@plt+0x499>
    15a1:	48 8d 3d 93 0b 00 00 	lea    0xb93(%rip),%rdi        # 213b <__cxa_finalize@plt+0xffb>
    15a8:	e8 c3 fa ff ff       	callq  1070 <system@plt>
    15ad:	bf 0a 00 00 00       	mov    $0xa,%edi
    15b2:	e8 79 fa ff ff       	callq  1030 <putchar@plt>
    15b7:	48 8d 3d 87 0b 00 00 	lea    0xb87(%rip),%rdi        # 2145 <__cxa_finalize@plt+0x1005>
    15be:	e8 7d fa ff ff       	callq  1040 <puts@plt>
    15c3:	48 8d 3d 99 0b 00 00 	lea    0xb99(%rip),%rdi        # 2163 <__cxa_finalize@plt+0x1023>
    15ca:	e8 71 fa ff ff       	callq  1040 <puts@plt>
    15cf:	bf 00 00 00 00       	mov    $0x0,%edi
    15d4:	e8 37 fb ff ff       	callq  1110 <exit@plt>
    15d9:	48 8d 3d 5b 0b 00 00 	lea    0xb5b(%rip),%rdi        # 213b <__cxa_finalize@plt+0xffb>
    15e0:	e8 8b fa ff ff       	callq  1070 <system@plt>
    15e5:	48 8d 3d 84 0b 00 00 	lea    0xb84(%rip),%rdi        # 2170 <__cxa_finalize@plt+0x1030>
    15ec:	e8 4f fa ff ff       	callq  1040 <puts@plt>
    15f1:	bf 0a 00 00 00       	mov    $0xa,%edi
    15f6:	e8 35 fa ff ff       	callq  1030 <putchar@plt>
    15fb:	48 8d 3d 95 0b 00 00 	lea    0xb95(%rip),%rdi        # 2197 <__cxa_finalize@plt+0x1057>
    1602:	b8 00 00 00 00       	mov    $0x0,%eax
    1607:	e8 74 fa ff ff       	callq  1080 <printf@plt>
    160c:	48 8b 15 9d 2a 00 00 	mov    0x2a9d(%rip),%rdx        # 40b0 <stdin@@GLIBC_2.2.5>
    1613:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1617:	be 11 00 00 00       	mov    $0x11,%esi
    161c:	48 89 c7             	mov    %rax,%rdi
    161f:	e8 6c fa ff ff       	callq  1090 <fgets@plt>
    1624:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    1628:	48 89 c7             	mov    %rax,%rdi
    162b:	e8 05 fc ff ff       	callq  1235 <__cxa_finalize@plt+0xf5>
    1630:	48 8d 3d 04 0b 00 00 	lea    0xb04(%rip),%rdi        # 213b <__cxa_finalize@plt+0xffb>
    1637:	e8 34 fa ff ff       	callq  1070 <system@plt>
    163c:	90                   	nop
    163d:	c9                   	leaveq 
    163e:	c3                   	retq   
    163f:	55                   	push   %rbp
    1640:	48 89 e5             	mov    %rsp,%rbp
    1643:	bf 0a 00 00 00       	mov    $0xa,%edi
    1648:	e8 e3 f9 ff ff       	callq  1030 <putchar@plt>
    164d:	48 8d 3d 54 0b 00 00 	lea    0xb54(%rip),%rdi        # 21a8 <__cxa_finalize@plt+0x1068>
    1654:	e8 e7 f9 ff ff       	callq  1040 <puts@plt>
    1659:	bf 01 00 00 00       	mov    $0x1,%edi
    165e:	e8 cd fa ff ff       	callq  1130 <sleep@plt>
    1663:	e8 37 fe ff ff       	callq  149f <__cxa_finalize@plt+0x35f>
    1668:	e8 8a fe ff ff       	callq  14f7 <__cxa_finalize@plt+0x3b7>
    166d:	e8 d3 fe ff ff       	callq  1545 <__cxa_finalize@plt+0x405>
    1672:	bf 00 00 00 00       	mov    $0x0,%edi
    1677:	e8 b4 fa ff ff       	callq  1130 <sleep@plt>
    167c:	bf 0a 00 00 00       	mov    $0xa,%edi
    1681:	e8 aa f9 ff ff       	callq  1030 <putchar@plt>
    1686:	48 8d 3d 51 0b 00 00 	lea    0xb51(%rip),%rdi        # 21de <__cxa_finalize@plt+0x109e>
    168d:	e8 ae f9 ff ff       	callq  1040 <puts@plt>
    1692:	bf 01 00 00 00       	mov    $0x1,%edi
    1697:	e8 94 fa ff ff       	callq  1130 <sleep@plt>
    169c:	e8 de fe ff ff       	callq  157f <__cxa_finalize@plt+0x43f>
    16a1:	90                   	nop
    16a2:	5d                   	pop    %rbp
    16a3:	c3                   	retq   
    16a4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    16ab:	00 00 00 
    16ae:	66 90                	xchg   %ax,%ax
    16b0:	41 57                	push   %r15
    16b2:	4c 8d 3d 2f 27 00 00 	lea    0x272f(%rip),%r15        # 3de8 <__cxa_finalize@plt+0x2ca8>
    16b9:	41 56                	push   %r14
    16bb:	49 89 d6             	mov    %rdx,%r14
    16be:	41 55                	push   %r13
    16c0:	49 89 f5             	mov    %rsi,%r13
    16c3:	41 54                	push   %r12
    16c5:	41 89 fc             	mov    %edi,%r12d
    16c8:	55                   	push   %rbp
    16c9:	48 8d 2d 20 27 00 00 	lea    0x2720(%rip),%rbp        # 3df0 <__cxa_finalize@plt+0x2cb0>
    16d0:	53                   	push   %rbx
    16d1:	4c 29 fd             	sub    %r15,%rbp
    16d4:	48 83 ec 08          	sub    $0x8,%rsp
    16d8:	e8 23 f9 ff ff       	callq  1000 <putchar@plt-0x30>
    16dd:	48 c1 fd 03          	sar    $0x3,%rbp
    16e1:	74 1b                	je     16fe <__cxa_finalize@plt+0x5be>
    16e3:	31 db                	xor    %ebx,%ebx
    16e5:	0f 1f 00             	nopl   (%rax)
    16e8:	4c 89 f2             	mov    %r14,%rdx
    16eb:	4c 89 ee             	mov    %r13,%rsi
    16ee:	44 89 e7             	mov    %r12d,%edi
    16f1:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    16f5:	48 83 c3 01          	add    $0x1,%rbx
    16f9:	48 39 dd             	cmp    %rbx,%rbp
    16fc:	75 ea                	jne    16e8 <__cxa_finalize@plt+0x5a8>
    16fe:	48 83 c4 08          	add    $0x8,%rsp
    1702:	5b                   	pop    %rbx
    1703:	5d                   	pop    %rbp
    1704:	41 5c                	pop    %r12
    1706:	41 5d                	pop    %r13
    1708:	41 5e                	pop    %r14
    170a:	41 5f                	pop    %r15
    170c:	c3                   	retq   
    170d:	0f 1f 00             	nopl   (%rax)
    1710:	c3                   	retq   

Disassembly of section .fini:

0000000000001714 <.fini>:
    1714:	48 83 ec 08          	sub    $0x8,%rsp
    1718:	48 83 c4 08          	add    $0x8,%rsp
    171c:	c3                   	retq   
