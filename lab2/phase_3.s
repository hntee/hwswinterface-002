Dump of assembler code for function phase_3:
=> 0x0000000000400ef9 <+0>:	sub    $0x18,%rsp
   0x0000000000400efd <+4>:	lea    0x8(%rsp),%rcx
   0x0000000000400f02 <+9>:	lea    0xc(%rsp),%rdx
   0x0000000000400f07 <+14>:	mov    $0x401ebe,%esi
   0x0000000000400f0c <+19>:	mov    $0x0,%eax
   0x0000000000400f11 <+24>:	callq  0x400ab0 <__isoc99_sscanf@plt>
   0x0000000000400f16 <+29>:	cmp    $0x1,%eax
   0x0000000000400f19 <+32>:	jg     0x400f20 <phase_3+39>
   0x0000000000400f1b <+34>:	callq  0x40163d <explode_bomb>
   0x0000000000400f20 <+39>:	cmpl   $0x7,0xc(%rsp)
   0x0000000000400f25 <+44>:	ja     0x400f63 <phase_3+106>
   0x0000000000400f27 <+46>:	mov    0xc(%rsp),%eax
   0x0000000000400f2b <+50>:	jmpq   *0x401b60(,%rax,8)
   0x0000000000400f32 <+57>:	mov    $0x217,%eax
   0x0000000000400f37 <+62>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f39 <+64>:	mov    $0xd6,%eax
   0x0000000000400f3e <+69>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f40 <+71>:	mov    $0x153,%eax
   0x0000000000400f45 <+76>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f47 <+78>:	mov    $0x77,%eax
   0x0000000000400f4c <+83>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f4e <+85>:	mov    $0x160,%eax
   0x0000000000400f53 <+90>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f55 <+92>:	mov    $0x397,%eax
   0x0000000000400f5a <+97>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f5c <+99>:	mov    $0x19c,%eax
   0x0000000000400f61 <+104>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f63 <+106>:	callq  0x40163d <explode_bomb>
   0x0000000000400f68 <+111>:	mov    $0x0,%eax
   0x0000000000400f6d <+116>:	jmp    0x400f74 <phase_3+123>
   0x0000000000400f6f <+118>:	mov    $0x39e,%eax
   0x0000000000400f74 <+123>:	cmp    0x8(%rsp),%eax
   0x0000000000400f78 <+127>:	je     0x400f7f <phase_3+134>
   0x0000000000400f7a <+129>:	callq  0x40163d <explode_bomb>
   0x0000000000400f7f <+134>:	add    $0x18,%rsp
   0x0000000000400f83 <+138>:	retq   