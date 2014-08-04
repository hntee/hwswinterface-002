Dump of assembler code for function phase_6:
=> 0x00000000004010d9 <+0>:	sub    $0x8,%rsp
   0x00000000004010dd <+4>:	mov    $0xa,%edx
   0x00000000004010e2 <+9>:	mov    $0x0,%esi
   0x00000000004010e7 <+14>:	callq  0x400b80 <strtol@plt>
   0x00000000004010ec <+19>:	mov    %eax,0x20168e(%rip)        # 0x602780 <node0>
   0x00000000004010f2 <+25>:	mov    $0x602780,%edi
   0x00000000004010f7 <+30>:	callq  0x40106f <fun6>
   0x00000000004010fc <+35>:	mov    0x8(%rax),%rax
   0x0000000000401100 <+39>:	mov    0x8(%rax),%rax
   0x0000000000401104 <+43>:	mov    0x8(%rax),%rax
   0x0000000000401108 <+47>:	mov    0x201672(%rip),%edx        # 0x602780 <node0>
   0x000000000040110e <+53>:	cmp    %edx,(%rax)
   0x0000000000401110 <+55>:	je     0x401117 <phase_6+62>
   0x0000000000401112 <+57>:	callq  0x40163d <explode_bomb>
   0x0000000000401117 <+62>:	add    $0x8,%rsp
   0x000000000040111b <+66>:	retq   
