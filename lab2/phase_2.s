Dump of assembler code for function phase_2:
=> 0x0000000000400e8c <+0>:	mov    %rbx,-0x20(%rsp)
   0x0000000000400e91 <+5>:	mov    %rbp,-0x18(%rsp)
   0x0000000000400e96 <+10>:	mov    %r12,-0x10(%rsp)
   0x0000000000400e9b <+15>:	mov    %r13,-0x8(%rsp)
   0x0000000000400ea0 <+20>:	sub    $0x48,%rsp
   0x0000000000400ea4 <+24>:	mov    %rsp,%rsi
   0x0000000000400ea7 <+27>:	callq  0x401743 <read_six_numbers>
   0x0000000000400eac <+32>:	mov    %rsp,%rbp
   0x0000000000400eaf <+35>:	lea    0xc(%rsp),%r13
   0x0000000000400eb4 <+40>:	mov    $0x0,%r12d
   0x0000000000400eba <+46>:	mov    %rbp,%rbx
   0x0000000000400ebd <+49>:	mov    0xc(%rbp),%eax
   0x0000000000400ec0 <+52>:	cmp    %eax,0x0(%rbp)
   0x0000000000400ec3 <+55>:	je     0x400eca <phase_2+62>
   0x0000000000400ec5 <+57>:	callq  0x40163d <explode_bomb>
   0x0000000000400eca <+62>:	add    (%rbx),%r12d
   0x0000000000400ecd <+65>:	add    $0x4,%rbp
   0x0000000000400ed1 <+69>:	cmp    %r13,%rbp
   0x0000000000400ed4 <+72>:	jne    0x400eba <phase_2+46>
   0x0000000000400ed6 <+74>:	test   %r12d,%r12d
   0x0000000000400ed9 <+77>:	jne    0x400ee0 <phase_2+84>
   0x0000000000400edb <+79>:	callq  0x40163d <explode_bomb>
   0x0000000000400ee0 <+84>:	mov    0x28(%rsp),%rbx
   0x0000000000400ee5 <+89>:	mov    0x30(%rsp),%rbp
   0x0000000000400eea <+94>:	mov    0x38(%rsp),%r12
   0x0000000000400eef <+99>:	mov    0x40(%rsp),%r13
   0x0000000000400ef4 <+104>:	add    $0x48,%rsp
   0x0000000000400ef8 <+108>:	retq   
