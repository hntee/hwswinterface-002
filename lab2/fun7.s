Dump of assembler code for function fun7:
   0x000000000040111c <+0>:	sub    $0x8,%rsp
   0x0000000000401120 <+4>:	test   %rdi,%rdi
   0x0000000000401123 <+7>:	je     0x401150 <fun7+52>
   0x0000000000401125 <+9>:	mov    (%rdi),%edx
=> 0x0000000000401127 <+11>:	cmp    %esi,%edx
   0x0000000000401129 <+13>:	jle    0x401138 <fun7+28>
   0x000000000040112b <+15>:	mov    0x8(%rdi),%rdi
   0x000000000040112f <+19>:	callq  0x40111c <fun7>
   0x0000000000401134 <+24>:	add    %eax,%eax
   0x0000000000401136 <+26>:	jmp    0x401155 <fun7+57>
   0x0000000000401138 <+28>:	mov    $0x0,%eax
   0x000000000040113d <+33>:	cmp    %esi,%edx
   0x000000000040113f <+35>:	je     0x401155 <fun7+57>
   0x0000000000401141 <+37>:	mov    0x10(%rdi),%rdi
   0x0000000000401145 <+41>:	callq  0x40111c <fun7>
   0x000000000040114a <+46>:	lea    0x1(%rax,%rax,1),%eax
   0x000000000040114e <+50>:	jmp    0x401155 <fun7+57>
   0x0000000000401150 <+52>:	mov    $0xffffffff,%eax
   0x0000000000401155 <+57>:	add    $0x8,%rsp
   0x0000000000401159 <+61>:	retq   