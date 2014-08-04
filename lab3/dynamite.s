movq 0x602320, %rax
movl $0xdeadbeef, 0x8(%rsp)
movl $0x0, 0xc(%rsp)
mov $0x7fffffffbcd0, %rbp
push $0x400ef3
retq

# 0000000000000000 <.text>:
#    0:	48 8b 04 25 20 23 60 	mov    0x602320,%rax
#    7:	00 
#    8:	c7 44 24 08 ef be ad 	movl   $0xdeadbeef,0x8(%rsp)
#    f:	de 
#   10:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%rsp)
#   17:	00 
#   18:	48 bd d0 bc ff ff ff 	movabs $0x7fffffffbcd0,%rbp
#   1f:	7f 00 00 
#   22:	68 f3 0e 40 00       	pushq  $0x400ef3
#   27:	c3                   	retq   