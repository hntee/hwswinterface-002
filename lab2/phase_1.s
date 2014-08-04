Dump of assembler code for function phase_1:
=> 0x0000000000400e70 <+0>:	sub    $0x8,%rsp
   0x0000000000400e74 <+4>:	mov    $0x401af8,%esi
   0x0000000000400e79 <+9>:	callq  0x40123d <strings_not_equal>
   0x0000000000400e7e <+14>:	test   %eax,%eax
   0x0000000000400e80 <+16>:	je     0x400e87 <phase_1+23>
   0x0000000000400e82 <+18>:	callq  0x40163d <explode_bomb>
   0x0000000000400e87 <+23>:	add    $0x8,%rsp
   0x0000000000400e8b <+27>:	retq   

Dump of assembler code for function strings_not_equal:
=> 0x000000000040123d <+0>:	mov    %rbx,-0x18(%rsp)
   0x0000000000401242 <+5>:	mov    %rbp,-0x10(%rsp)
   0x0000000000401247 <+10>:	mov    %r12,-0x8(%rsp)
   0x000000000040124c <+15>:	sub    $0x18,%rsp
   0x0000000000401250 <+19>:	mov    %rdi,%rbx
   0x0000000000401253 <+22>:	mov    %rsi,%rbp
   0x0000000000401256 <+25>:	callq  0x401221 <string_length>
   0x000000000040125b <+30>:	mov    %eax,%r12d
   0x000000000040125e <+33>:	mov    %rbp,%rdi
   0x0000000000401261 <+36>:	callq  0x401221 <string_length>
   0x0000000000401266 <+41>:	mov    $0x1,%edx
   0x000000000040126b <+46>:	cmp    %eax,%r12d
   0x000000000040126e <+49>:	jne    0x4012a6 <strings_not_equal+105>
   0x0000000000401270 <+51>:	movzbl (%rbx),%eax
   0x0000000000401273 <+54>:	mov    $0x0,%dl
   0x0000000000401275 <+56>:	test   %al,%al
   0x0000000000401277 <+58>:	je     0x4012a6 <strings_not_equal+105>
   0x0000000000401279 <+60>:	mov    $0x1,%dl
   0x000000000040127b <+62>:	cmp    0x0(%rbp),%al
   0x000000000040127e <+65>:	jne    0x4012a6 <strings_not_equal+105>
   0x0000000000401280 <+67>:	mov    $0x0,%eax
   0x0000000000401285 <+72>:	jmp    0x401291 <strings_not_equal+84>
   0x0000000000401287 <+74>:	add    $0x1,%rax
   0x000000000040128b <+78>:	cmp    0x0(%rbp,%rax,1),%dl
   0x000000000040128f <+82>:	jne    0x4012a1 <strings_not_equal+100>
   0x0000000000401291 <+84>:	movzbl 0x1(%rbx,%rax,1),%edx
   0x0000000000401296 <+89>:	test   %dl,%dl
   0x0000000000401298 <+91>:	jne    0x401287 <strings_not_equal+74>
   0x000000000040129a <+93>:	mov    $0x0,%edx
   0x000000000040129f <+98>:	jmp    0x4012a6 <strings_not_equal+105>
   0x00000000004012a1 <+100>:	mov    $0x1,%edx
   0x00000000004012a6 <+105>:	mov    %edx,%eax
   0x00000000004012a8 <+107>:	mov    (%rsp),%rbx
   0x00000000004012ac <+111>:	mov    0x8(%rsp),%rbp
   0x00000000004012b1 <+116>:	mov    0x10(%rsp),%r12
   0x00000000004012b6 <+121>:	add    $0x18,%rsp
   0x00000000004012ba <+125>:	retq   
