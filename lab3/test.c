#include <stdio.h>

unsigned long long global_value = 0;

void set() {
	global_value = 0x615661ba723ba0de;
	return;
}

void fun1() {
	set();

}

int main() {
  execve("./msg.py");
	fun1();
}

/*
0000000000000000 <set>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 c7 05 00 00 00 00 	movq   $0x1,0x0(%rip)        # f <set+0xf>
   b:	01 00 00 00 
   f:	90                   	nop
  10:	5d                   	pop    %rbp
  11:	c3                   	retq   

0000000000000012 <fun1>:
  12:	55                   	push   %rbp
  13:	48 89 e5             	mov    %rsp,%rbp
  16:	b8 00 00 00 00       	mov    $0x0,%eax
  1b:	e8 00 00 00 00       	callq  20 <fun1+0xe>
  20:	5d                   	pop    %rbp
  21:	c3                   	retq   

0000000000000022 <main>:
  22:	55                   	push   %rbp
  23:	48 89 e5             	mov    %rsp,%rbp
  26:	b8 00 00 00 00       	mov    $0x0,%eax
  2b:	e8 00 00 00 00       	callq  30 <main+0xe>
  30:	5d                   	pop    %rbp
  31:	c3                   	retq   
 */