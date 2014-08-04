
test:     file format elf64-x86-64


Disassembly of section .init:

000000000040049c <set>:
  40049c:	55                   	push   %rbp
  40049d:	48 89 e5             	mov    %rsp,%rbp
  4004a0:	48 c7 05 1d 04 20 00 	movq   $0x1,0x20041d(%rip)        # 6008c8 <global_value>
  4004a7:	01 00 00 00 
  4004ab:	90                   	nop
  4004ac:	5d                   	pop    %rbp
  4004ad:	c3                   	retq   

00000000004004ae <fun1>:
  4004ae:	55                   	push   %rbp
  4004af:	48 89 e5             	mov    %rsp,%rbp
  4004b2:	b8 00 00 00 00       	mov    $0x0,%eax
  4004b7:	e8 e0 ff ff ff       	callq  40049c <set>
  4004bc:	5d                   	pop    %rbp
  4004bd:	c3                   	retq   

00000000004004be <main>:
  4004be:	55                   	push   %rbp
  4004bf:	48 89 e5             	mov    %rsp,%rbp
  4004c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4004c7:	e8 e2 ff ff ff       	callq  4004ae <fun1>
  4004cc:	5d                   	pop    %rbp
  4004cd:	c3                   	retq   
  4004ce:	66 90                	xchg   %ax,%ax

