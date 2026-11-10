┌ fcn.140001128(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; arg int64_t arg4 @ r9
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_28h @ stack - 0x28
│           0x140001128      mov   rax, rsp
│           0x14000112b      mov   qword [rax+0x08], rbx
│           0x14000112f      mov   qword [rax+0x10], rbp
│           0x140001133      mov   qword [rax+0x18], rsi
│           0x140001137      push  rdi
│           0x140001138      push  r12
│           0x14000113a      push  r13
│           0x14000113c      push  r14
│           0x14000113e      push  r15
│           0x140001140      sub   rsp, 0x40
│           0x140001144      mov   rbx, r9                             ; arg4
│           0x140001147      mov   rbp, r8                             ; arg3
│           0x14000114a      mov   rdi, rdx                            ; arg2
│           0x14000114d      mov   rsi, rcx                            ; arg1
│           0x140001150      xor   r13d, r13d
│           0x140001153      lea   r14, qword [0x140004030]            ; "0@"
│           0x14000115a      cmp   qword [0x140004030], r14            ; [0x140004030:8]=0x140004030
│           0x140001161      lea   r12, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│           0x140001168      lea   r15d, qword [r13+0x06]
│       ┌─< 0x14000116c      jz    0x140001192
│       │   0x14000116e      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x140001175      cmp   word [rcx+0x48], r13w
│      ┌──< 0x14000117a      jz    0x140001192
│      ││   0x14000117c      mov   rcx, qword [rcx+0x40]
│      ││   0x140001180      lea   r9d, qword [r13+0x26]
│      ││   0x140001184      mov   r8d, r15d
│      ││   0x140001187      mov   qword [rax-0x48], r12
│      ││   0x14000118b      mov   dl, 0x05
│      ││   0x14000118d      call  0x140001374
│      └└─> 0x140001192      cmp   byte [rdi+0x60], r13b
│       ┌─< 0x140001196      jz    0x1400011b4
│       │   0x140001198      mov   ebx, 0xc0000184
│       │   0x14000119d      cmp   qword [0x140004030], r14            ; [0x140004030:8]=0x140004030
│      ┌──< 0x1400011a4      jz    0x14000126b
│      ││   0x1400011aa      mov   r9d, 0x27                           ; ''' ; 39
│      ││   0x1400011b0      mov   dl, 0x02
│     ┌───< 0x1400011b2      jmp   0x14000121e
│     ││└─> 0x1400011b4      mov   rax, qword [rdi+0x50]
│     ││    0x1400011b8      mov   r8, rbx
│     ││    0x1400011bb      mov   rcx, qword [rdi+0x10]
│     ││    0x1400011bf      mov   rdx, rbp
│     ││    0x1400011c2      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│     ││    0x1400011c8      mov   ebx, eax
│     ││    0x1400011ca      test  eax, eax
│     ││┌─< 0x1400011cc      jns   0x140001209
│     │││   0x1400011ce      cmp   qword [0x140004030], r14            ; [0x140004030:8]=0x140004030
│    ┌────< 0x1400011d5      jz    0x14000126b
│    ││││   0x1400011db      lfence
│    ││││   0x1400011de      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│    ││││   0x1400011e5      mov   r9d, 0x28                           ; '(' ; 40
│    ││││   0x1400011eb      mov   dword [var_38h], eax
│    ││││   0x1400011ef      mov   r8d, r15d
│    ││││   0x1400011f2      mov   qword [var_40h], rsi
│    ││││   0x1400011f7      mov   dl, 0x02
│    ││││   0x1400011f9      mov   qword [var_48h], r12
│    ││││   0x1400011fe      mov   rcx, qword [rcx+0x40]
│    ││││   0x140001202      call  0x14000152c
│   ┌─────< 0x140001207      jmp   0x14000123b
│   ││││└─> 0x140001209      mov   byte [rdi+0x60], 0x01
│   ││││    0x14000120d      cmp   qword [0x140004030], r14            ; [0x140004030:8]=0x140004030
│   ││││┌─< 0x140001214      jz    0x14000126b
│   │││││   0x140001216      mov   r9d, 0x29                           ; ')' ; 41
│   │││││   0x14000121c      mov   dl, 0x04
│   │││││   ; CODE XREF from fcn.140001128 @ 0x1400011b2
│   ││└───> 0x14000121e      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│   ││ ││   0x140001225      mov   r8d, r15d
│   ││ ││   0x140001228      mov   qword [var_40h], rsi
│   ││ ││   0x14000122d      mov   qword [var_48h], r12
│   ││ ││   0x140001232      mov   rcx, qword [rcx+0x40]
│   ││ ││   0x140001236      call  0x14000164c
│   ││ ││   ; CODE XREF from fcn.140001128 @ 0x140001207
│   └─────> 0x14000123b      cmp   qword [0x140004030], r14            ; [0x140004030:8]=0x140004030
│    │┌───< 0x140001242      jz    0x14000126b
│    ││││   0x140001244      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│    ││││   0x14000124b      cmp   word [rcx+0x48], r13w
│   ┌─────< 0x140001250      jz    0x14000126b
│   │││││   0x140001252      mov   rcx, qword [rcx+0x40]
│   │││││   0x140001256      mov   r9d, 0x2a                           ; '*' ; 42
│   │││││   0x14000125c      mov   r8d, r15d
│   │││││   0x14000125f      mov   qword [var_48h], r12
│   │││││   0x140001264      mov   dl, 0x05
│   │││││   0x140001266      call  0x140001374
│   └└└└└─> 0x14000126b      lea   r11, qword [var_28h]
│           0x140001270      mov   eax, ebx
│           0x140001272      mov   rbx, qword [r11+0x30]
│           0x140001276      mov   rbp, qword [r11+0x38]
│           0x14000127a      mov   rsi, qword [r11+0x40]
│           0x14000127e      mov   rsp, r11
│           0x140001281      pop   r15
│           0x140001283      pop   r14
│           0x140001285      pop   r13
│           0x140001287      pop   r12
│           0x140001289      pop   rdi
└           0x14000128a      ret
┌ fcn.14000128c(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           0x14000128c      mov   rax, rsp
│           0x14000128f      mov   qword [rax+0x08], rbx
│           0x140001293      mov   qword [rax+0x10], rbp
│           0x140001297      mov   qword [rax+0x18], rdi
│           0x14000129b      push  r15
│           0x14000129d      sub   rsp, 0x30
│           0x1400012a1      mov   rbx, rdx                            ; arg2
│           0x1400012a4      mov   rdi, rcx                            ; arg1
│           0x1400012a7      lea   rbp, qword [0x140004030]            ; "0@"
│           0x1400012ae      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
│           0x1400012b5      lea   r15, qword [0x140003160]
│       ┌─< 0x1400012bc      jz    0x1400012e5
│       │   0x1400012be      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x1400012c5      cmp   word [rcx+0x48], 0x00
│      ┌──< 0x1400012ca      jz    0x1400012e5
│      ││   0x1400012cc      mov   rcx, qword [rcx+0x40]
│      ││   0x1400012d0      mov   r9d, 0x2b                           ; '+' ; 43
│      ││   0x1400012d6      mov   dl, 0x05
│      ││   0x1400012d8      mov   qword [rax-0x18], r15
│      ││   0x1400012dc      lea   r8d, qword [r9-0x25]
│      ││   0x1400012e0      call  0x140001374
│      └└─> 0x1400012e5      cmp   byte [rbx+0x60], 0x00
│       ┌─< 0x1400012e9      jz    0x14000132c
│       │   0x1400012eb      mov   rax, qword [rbx+0x58]
│       │   0x1400012ef      mov   rcx, qword [rbx+0x10]
│       │   0x1400012f3      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│       │   0x1400012f9      mov   byte [rbx+0x60], 0x00
│       │   0x1400012fd      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
│      ┌──< 0x140001304      jz    0x14000135d
│      ││   0x140001306      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x14000130d      mov   r9d, 0x2c                           ; ',' ; 44
│      ││   0x140001313      mov   qword [rsp+0x28], rdi
│      ││   0x140001318      mov   dl, 0x04
│      ││   0x14000131a      mov   qword [rsp+0x20], r15
│      ││   0x14000131f      mov   rcx, qword [rcx+0x40]
│      ││   0x140001323      lea   r8d, qword [r9-0x26]
│      ││   0x140001327      call  0x14000164c
│      │└─> 0x14000132c      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
│      │┌─< 0x140001333      jz    0x14000135d
│      ││   0x140001335      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x14000133c      cmp   word [rcx+0x48], 0x00
│     ┌───< 0x140001341      jz    0x14000135d
│     │││   0x140001343      mov   rcx, qword [rcx+0x40]
│     │││   0x140001347      mov   r9d, 0x2d                           ; '-' ; 45
│     │││   0x14000134d      mov   dl, 0x05
│     │││   0x14000134f      mov   qword [rsp+0x20], r15
│     │││   0x140001354      lea   r8d, qword [r9-0x27]
│     │││   0x140001358      call  0x140001374
│     └└└─> 0x14000135d      mov   rbx, qword [var_8h]
│           0x140001362      mov   rbp, qword [var_10h]
│           0x140001367      mov   rdi, qword [var_18h]
│           0x14000136c      add   rsp, 0x30
│           0x140001370      pop   r15
└           0x140001372      ret
            ; CALL XREFS from fcn.140001128 @ 0x14000118d, 0x140001266
            ; CALL XREFS from fcn.14000128c @ 0x1400012e0, 0x140001358
┌ fcn.140001374(int64_t arg1, int64_t arg3, int64_t arg_28h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           0x140001374      mov   qword [var_8h], rbx
│           0x140001379      mov   qword [var_10h], rbp
│           0x14000137e      mov   qword [var_18h], rsi
│           0x140001383      push  rdi
│           0x140001384      push  r14
│           0x140001386      push  r15
│           0x140001388      sub   rsp, 0x30
│           0x14000138c      mov   r14d, r8d                           ; arg3
│           0x14000138f      mov   r15, rcx                            ; arg1
│           0x140001392      mov   edi, r8d                            ; arg3
│           0x140001395      shr   rdi, 0x10
│           0x140001399      movzx ebp, r9w
│           0x14000139d      lea   ebx, qword [r14-0x01]
│           0x1400013a1      movzx esi, dl
│           0x1400013a4      mov   r10d, ebx
│           0x1400013a7      and   ebx, 0x1f                           ; 31
│           0x1400013aa      shr   r10, 0x05
│           0x1400013ae      lea   rax, qword [rdi+rdi*4]
│           0x1400013b2      and   r10d, 0x7ff                         ; 2047
│           0x1400013b9      lea   r11, qword [r10+rax*4]
│           0x1400013bd      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x1400013c4      mov   eax, dword [r10+r11*4+0x2c]
│           0x1400013c9      bt    eax, ebx
│       ┌─< 0x1400013cc      jnb   0x140001401
│       │   0x1400013ce      lea   rcx, qword [rdi+rdi*4]
│       │   0x1400013d2      add   rcx, rcx
│       │   0x1400013d5      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x1400013da      jb    0x140001401
│      ││   0x1400013dc      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x1400013e3      mov   r9d, ebp
│      ││   0x1400013e6      and   qword [var_28h], 0x00
│      ││   0x1400013ec      mov   edx, 0x2b                           ; '+' ; 43
│      ││   0x1400013f1      mov   r8, qword [arg_28h]
│      ││   0x1400013f6      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x1400013fb      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x140001401      and   qword [var_20h], 0x00
│           0x140001407      mov   r8d, r14d
│           0x14000140a      mov   r9, qword [arg_28h]
│           0x14000140f      mov   edx, esi
│           0x140001411      mov   rcx, r15
│           0x140001414      mov   word [var_28h], bp
│           0x140001419      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x14000141e      mov   rbx, qword [var_8h]
│           0x140001423      mov   rbp, qword [var_10h]
│           0x140001428      mov   rsi, qword [var_18h]
│           0x14000142d      add   rsp, 0x30
│           0x140001431      pop   r15
│           0x140001433      pop   r14
│           0x140001435      pop   rdi
└           0x140001436      ret
┌ fcn.140001438(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           0x140001438      mov   qword [var_8h], rbx
│           0x14000143d      mov   qword [var_10h], rbp
│           0x140001442      mov   qword [var_18h], rsi
│           0x140001447      push  rdi
│           0x140001448      push  r14
│           0x14000144a      push  r15
│           0x14000144c      sub   rsp, 0x40
│           0x140001450      mov   r14d, r8d                           ; arg3
│           0x140001453      mov   r15, rcx                            ; arg1
│           0x140001456      mov   edi, r8d                            ; arg3
│           0x140001459      shr   rdi, 0x10
│           0x14000145d      movzx esi, dl
│           0x140001460      lea   ebx, qword [r14-0x01]
│           0x140001464      movzx ebp, r9w
│           0x140001468      mov   r10d, ebx
│           0x14000146b      and   ebx, 0x1f                           ; 31
│           0x14000146e      shr   r10, 0x05
│           0x140001472      lea   rax, qword [rdi+rdi*4]
│           0x140001476      and   r10d, 0x7ff                         ; 2047
│           0x14000147d      mov   edx, ebx
│           0x14000147f      mov   ebx, 0x04
│           0x140001484      lea   r11, qword [r10+rax*4]
│           0x140001488      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x14000148f      mov   eax, dword [r10+r11*4+0x2c]
│           0x140001494      bt    eax, edx
│       ┌─< 0x140001497      jnb   0x1400014df
│       │   0x140001499      lea   rcx, qword [rdi+rdi*4]
│       │   0x14000149d      add   rcx, rcx
│       │   0x1400014a0      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x1400014a5      jb    0x1400014df
│      ││   0x1400014a7      and   qword [var_28h], 0x00
│      ││   0x1400014ad      lea   rdx, qword [arg_30h]
│      ││   0x1400014b5      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x1400014bc      mov   r9d, ebp
│      ││   0x1400014bf      mov   r8, qword [arg_28h]
│      ││   0x1400014c7      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x1400014cc      mov   qword [var_30h], rbx
│      ││   0x1400014d1      mov   qword [var_38h], rdx
│      ││   0x1400014d6      lea   edx, qword [rbx+0x27]
│      ││   0x1400014d9      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x1400014df      and   qword [var_20h], 0x00
│           0x1400014e5      lea   rax, qword [arg_30h]
│           0x1400014ed      mov   r9, qword [arg_28h]
│           0x1400014f5      mov   r8d, r14d
│           0x1400014f8      mov   qword [var_28h], rbx
│           0x1400014fd      mov   edx, esi
│           0x1400014ff      mov   qword [var_30h], rax
│           0x140001504      mov   rcx, r15
│           0x140001507      mov   word [var_38h], bp
│           0x14000150c      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x140001511      mov   rbx, qword [var_8h]
│           0x140001516      mov   rbp, qword [var_10h]
│           0x14000151b      mov   rsi, qword [var_18h]
│           0x140001520      add   rsp, 0x40
│           0x140001524      pop   r15
│           0x140001526      pop   r14
│           0x140001528      pop   rdi
└           0x140001529      ret
            ; CALL XREF from fcn.140001128 @ 0x140001202
┌ fcn.14000152c(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_38h @ stack + 0x38
│           0x14000152c      mov   qword [var_8h], rbx
│           0x140001531      mov   qword [var_10h], rbp
│           0x140001536      mov   qword [var_18h], rsi
│           0x14000153b      push  rdi
│           0x14000153c      push  r14
│           0x14000153e      push  r15
│           0x140001540      sub   rsp, 0x50
│           0x140001544      mov   r14d, r8d                           ; arg3
│           0x140001547      mov   r15, rcx                            ; arg1
│           0x14000154a      mov   edi, r8d                            ; arg3
│           0x14000154d      shr   rdi, 0x10
│           0x140001551      movzx esi, dl
│           0x140001554      lea   ebx, qword [r14-0x01]
│           0x140001558      movzx ebp, r9w
│           0x14000155c      mov   r10d, ebx
│           0x14000155f      and   ebx, 0x1f                           ; 31
│           0x140001562      shr   r10, 0x05
│           0x140001566      lea   rax, qword [rdi+rdi*4]
│           0x14000156a      and   r10d, 0x7ff                         ; 2047
│           0x140001571      mov   edx, ebx
│           0x140001573      mov   ebx, 0x04
│           0x140001578      lea   r11, qword [r10+rax*4]
│           0x14000157c      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x140001583      mov   eax, dword [r10+r11*4+0x2c]
│           0x140001588      bt    eax, edx
│       ┌─< 0x14000158b      jnb   0x1400015e9
│       │   0x14000158d      lea   rcx, qword [rdi+rdi*4]
│       │   0x140001591      add   rcx, rcx
│       │   0x140001594      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x140001599      jb    0x1400015e9
│      ││   0x14000159b      and   qword [var_28h], 0x00
│      ││   0x1400015a1      lea   rdx, qword [arg_38h]
│      ││   0x1400015a9      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x1400015b0      mov   r9d, ebp
│      ││   0x1400015b3      mov   r8, qword [arg_28h]
│      ││   0x1400015bb      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x1400015c0      mov   qword [var_30h], rbx
│      ││   0x1400015c5      mov   qword [var_38h], rdx
│      ││   0x1400015ca      lea   rdx, qword [arg_30h]
│      ││   0x1400015d2      mov   qword [var_40h], 0x08
│      ││   0x1400015db      mov   qword [var_48h], rdx
│      ││   0x1400015e0      lea   edx, qword [rbx+0x27]
│      ││   0x1400015e3      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x1400015e9      and   qword [var_20h], 0x00
│           0x1400015ef      lea   rax, qword [arg_38h]
│           0x1400015f7      mov   r9, qword [arg_28h]
│           0x1400015ff      mov   r8d, r14d
│           0x140001602      mov   qword [var_28h], rbx
│           0x140001607      mov   edx, esi
│           0x140001609      mov   qword [var_30h], rax
│           0x14000160e      mov   rcx, r15
│           0x140001611      lea   rax, qword [arg_30h]
│           0x140001619      mov   qword [var_38h], 0x08
│           0x140001622      mov   qword [var_40h], rax
│           0x140001627      mov   word [var_48h], bp
│           0x14000162c      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x140001631      lea   r11, qword [var_20h + 0x8]
│           0x140001636      mov   rbx, qword [r11+0x20]
│           0x14000163a      mov   rbp, qword [r11+0x28]
│           0x14000163e      mov   rsi, qword [r11+0x30]
│           0x140001642      mov   rsp, r11
│           0x140001645      pop   r15
│           0x140001647      pop   r14
│           0x140001649      pop   rdi
└           0x14000164a      ret
            ; CALL XREF from fcn.140001128 @ 0x140001236
            ; CALL XREF from fcn.14000128c @ 0x140001327
┌ fcn.14000164c(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           0x14000164c      mov   qword [var_8h], rbx
│           0x140001651      mov   qword [var_10h], rbp
│           0x140001656      mov   qword [var_18h], rsi
│           0x14000165b      push  rdi
│           0x14000165c      push  r14
│           0x14000165e      push  r15
│           0x140001660      sub   rsp, 0x40
│           0x140001664      mov   r14d, r8d                           ; arg3
│           0x140001667      mov   r15, rcx                            ; arg1
│           0x14000166a      mov   edi, r8d                            ; arg3
│           0x14000166d      shr   rdi, 0x10
│           0x140001671      movzx esi, dl
│           0x140001674      lea   ebx, qword [r14-0x01]
│           0x140001678      movzx ebp, r9w
│           0x14000167c      mov   r10d, ebx
│           0x14000167f      and   ebx, 0x1f                           ; 31
│           0x140001682      shr   r10, 0x05
│           0x140001686      lea   rax, qword [rdi+rdi*4]
│           0x14000168a      and   r10d, 0x7ff                         ; 2047
│           0x140001691      mov   edx, ebx
│           0x140001693      mov   ebx, 0x08
│           0x140001698      lea   r11, qword [r10+rax*4]
│           0x14000169c      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x1400016a3      mov   eax, dword [r10+r11*4+0x2c]
│           0x1400016a8      bt    eax, edx
│       ┌─< 0x1400016ab      jnb   0x1400016f3
│       │   0x1400016ad      lea   rcx, qword [rdi+rdi*4]
│       │   0x1400016b1      add   rcx, rcx
│       │   0x1400016b4      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x1400016b9      jb    0x1400016f3
│      ││   0x1400016bb      and   qword [var_28h], 0x00
│      ││   0x1400016c1      lea   rdx, qword [arg_30h]
│      ││   0x1400016c9      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x1400016d0      mov   r9d, ebp
│      ││   0x1400016d3      mov   r8, qword [arg_28h]
│      ││   0x1400016db      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x1400016e0      mov   qword [var_30h], rbx
│      ││   0x1400016e5      mov   qword [var_38h], rdx
│      ││   0x1400016ea      lea   edx, qword [rbx+0x23]
│      ││   0x1400016ed      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x1400016f3      and   qword [var_20h], 0x00
│           0x1400016f9      lea   rax, qword [arg_30h]
│           0x140001701      mov   r9, qword [arg_28h]
│           0x140001709      mov   r8d, r14d
│           0x14000170c      mov   qword [var_28h], rbx
│           0x140001711      mov   edx, esi
│           0x140001713      mov   qword [var_30h], rax
│           0x140001718      mov   rcx, r15
│           0x14000171b      mov   word [var_38h], bp
│           0x140001720      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x140001725      mov   rbx, qword [var_8h]
│           0x14000172a      mov   rbp, qword [var_10h]
│           0x14000172f      mov   rsi, qword [var_18h]
│           0x140001734      add   rsp, 0x40
│           0x140001738      pop   r15
│           0x14000173a      pop   r14
│           0x14000173c      pop   rdi
└           0x14000173d      ret
┌ fcn.140001740(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h, int64_t arg_40h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_38h @ stack + 0x38
│           ; arg int64_t arg_40h @ stack + 0x40
│           0x140001740      mov   qword [var_8h], rbx
│           0x140001745      mov   qword [var_10h], rbp
│           0x14000174a      mov   qword [var_18h], rsi
│           0x14000174f      push  rdi
│           0x140001750      push  r14
│           0x140001752      push  r15
│           0x140001754      sub   rsp, 0x60
│           0x140001758      mov   r14d, r8d                           ; arg3
│           0x14000175b      mov   r15, rcx                            ; arg1
│           0x14000175e      mov   edi, r8d                            ; arg3
│           0x140001761      shr   rdi, 0x10
│           0x140001765      movzx esi, dl
│           0x140001768      lea   ebx, qword [r14-0x01]
│           0x14000176c      movzx ebp, r9w
│           0x140001770      mov   r10d, ebx
│           0x140001773      and   ebx, 0x1f                           ; 31
│           0x140001776      shr   r10, 0x05
│           0x14000177a      lea   rax, qword [rdi+rdi*4]
│           0x14000177e      and   r10d, 0x7ff                         ; 2047
│           0x140001785      mov   edx, ebx
│           0x140001787      mov   ebx, 0x04
│           0x14000178c      lea   r11, qword [r10+rax*4]
│           0x140001790      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x140001797      mov   eax, dword [r10+r11*4+0x2c]
│           0x14000179c      bt    eax, edx
│       ┌─< 0x14000179f      jnb   0x14000180f
│       │   0x1400017a1      lea   rcx, qword [rdi+rdi*4]
│       │   0x1400017a5      add   rcx, rcx
│       │   0x1400017a8      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x1400017ad      jb    0x14000180f
│      ││   0x1400017af      and   qword [var_28h], 0x00
│      ││   0x1400017b5      lea   rdx, qword [arg_40h]
│      ││   0x1400017bd      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x1400017c4      mov   r9d, ebp
│      ││   0x1400017c7      mov   r8, qword [arg_28h]
│      ││   0x1400017cf      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x1400017d4      mov   qword [var_30h], rbx
│      ││   0x1400017d9      mov   qword [var_38h], rdx
│      ││   0x1400017de      lea   rdx, qword [arg_38h]
│      ││   0x1400017e6      mov   qword [var_40h], rbx
│      ││   0x1400017eb      mov   qword [var_48h], rdx
│      ││   0x1400017f0      lea   rdx, qword [arg_30h]
│      ││   0x1400017f8      mov   qword [var_50h], 0x08
│      ││   0x140001801      mov   qword [var_58h], rdx
│      ││   0x140001806      lea   edx, qword [rbx+0x27]
│      ││   0x140001809      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x14000180f      and   qword [var_20h], 0x00
│           0x140001815      lea   rax, qword [arg_40h]
│           0x14000181d      mov   r9, qword [arg_28h]
│           0x140001825      mov   r8d, r14d
│           0x140001828      mov   qword [var_28h], rbx
│           0x14000182d      mov   edx, esi
│           0x14000182f      mov   qword [var_30h], rax
│           0x140001834      mov   rcx, r15
│           0x140001837      mov   qword [var_38h], rbx
│           0x14000183c      lea   rax, qword [arg_38h]
│           0x140001844      mov   qword [var_40h], rax
│           0x140001849      lea   rax, qword [arg_30h]
│           0x140001851      mov   qword [var_48h], 0x08
│           0x14000185a      mov   qword [var_50h], rax
│           0x14000185f      mov   word [var_58h], bp
│           0x140001864      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x140001869      lea   r11, qword [var_20h + 0x8]
│           0x14000186e      mov   rbx, qword [r11+0x20]
│           0x140001872      mov   rbp, qword [r11+0x28]
│           0x140001876      mov   rsi, qword [r11+0x30]
│           0x14000187a      mov   rsp, r11
│           0x14000187d      pop   r15
│           0x14000187f      pop   r14
│           0x140001881      pop   rdi
└           0x140001882      ret
┌ fcn.140001884(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h, int64_t arg_40h, int64_t arg_48h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_38h @ stack + 0x38
│           ; arg int64_t arg_40h @ stack + 0x40
│           ; arg int64_t arg_48h @ stack + 0x48
│           0x140001884      mov   qword [var_8h], rbx
│           0x140001889      mov   qword [var_10h], rbp
│           0x14000188e      mov   qword [var_18h], rsi
│           0x140001893      push  rdi
│           0x140001894      push  r14
│           0x140001896      push  r15
│           0x140001898      sub   rsp, 0x70
│           0x14000189c      mov   r14d, r8d                           ; arg3
│           0x14000189f      mov   r15, rcx                            ; arg1
│           0x1400018a2      mov   edi, r8d                            ; arg3
│           0x1400018a5      shr   rdi, 0x10
│           0x1400018a9      movzx esi, dl
│           0x1400018ac      lea   ebx, qword [r14-0x01]
│           0x1400018b0      movzx ebp, r9w
│           0x1400018b4      mov   r10d, ebx
│           0x1400018b7      and   ebx, 0x1f                           ; 31
│           0x1400018ba      shr   r10, 0x05
│           0x1400018be      lea   rax, qword [rdi+rdi*4]
│           0x1400018c2      and   r10d, 0x7ff                         ; 2047
│           0x1400018c9      mov   edx, ebx
│           0x1400018cb      mov   ebx, 0x04
│           0x1400018d0      lea   r11, qword [r10+rax*4]
│           0x1400018d4      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x1400018db      mov   eax, dword [r10+r11*4+0x2c]
│           0x1400018e0      bt    eax, edx
│       ┌─< 0x1400018e3      jnb   0x140001969
│       │   0x1400018e9      lea   rcx, qword [rdi+rdi*4]
│       │   0x1400018ed      add   rcx, rcx
│       │   0x1400018f0      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x1400018f5      jb    0x140001969
│      ││   0x1400018f7      and   qword [var_28h], 0x00
│      ││   0x1400018fd      lea   rdx, qword [arg_48h]
│      ││   0x140001905      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x14000190c      mov   r9d, ebp
│      ││   0x14000190f      mov   r8, qword [arg_28h]
│      ││   0x140001917      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x14000191c      mov   qword [var_30h], rbx
│      ││   0x140001921      mov   qword [var_38h], rdx
│      ││   0x140001926      lea   rdx, qword [arg_40h]
│      ││   0x14000192e      mov   qword [var_40h], rbx
│      ││   0x140001933      mov   qword [var_48h], rdx
│      ││   0x140001938      lea   rdx, qword [arg_38h]
│      ││   0x140001940      mov   qword [var_50h], rbx
│      ││   0x140001945      mov   qword [var_58h], rdx
│      ││   0x14000194a      lea   rdx, qword [arg_30h]
│      ││   0x140001952      mov   qword [var_60h], 0x08
│      ││   0x14000195b      mov   qword [var_68h], rdx
│      ││   0x140001960      lea   edx, qword [rbx+0x27]
│      ││   0x140001963      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x140001969      and   qword [var_20h], 0x00
│           0x14000196f      lea   rax, qword [arg_48h]
│           0x140001977      mov   r9, qword [arg_28h]
│           0x14000197f      mov   r8d, r14d
│           0x140001982      mov   qword [var_28h], rbx
│           0x140001987      mov   edx, esi
│           0x140001989      mov   qword [var_30h], rax
│           0x14000198e      mov   rcx, r15
│           0x140001991      mov   qword [var_38h], rbx
│           0x140001996      lea   rax, qword [arg_40h]
│           0x14000199e      mov   qword [var_40h], rax
│           0x1400019a3      lea   rax, qword [arg_38h]
│           0x1400019ab      mov   qword [var_48h], rbx
│           0x1400019b0      mov   qword [var_50h], rax
│           0x1400019b5      lea   rax, qword [arg_30h]
│           0x1400019bd      mov   qword [var_58h], 0x08
│           0x1400019c6      mov   qword [var_60h], rax
│           0x1400019cb      mov   word [var_68h], bp
│           0x1400019d0      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x1400019d5      lea   r11, qword [var_20h + 0x8]
│           0x1400019da      mov   rbx, qword [r11+0x20]
│           0x1400019de      mov   rbp, qword [r11+0x28]
│           0x1400019e2      mov   rsi, qword [r11+0x30]
│           0x1400019e6      mov   rsp, r11
│           0x1400019e9      pop   r15
│           0x1400019eb      pop   r14
│           0x1400019ed      pop   rdi
└           0x1400019ee      ret
┌ fcn.1400019f0(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_38h @ stack + 0x38
│           0x1400019f0      mov   qword [var_8h], rbx
│           0x1400019f5      mov   qword [var_10h], rbp
│           0x1400019fa      mov   qword [var_18h], rsi
│           0x1400019ff      push  rdi
│           0x140001a00      push  r14
│           0x140001a02      push  r15
│           0x140001a04      sub   rsp, 0x50
│           0x140001a08      mov   r14d, r8d                           ; arg3
│           0x140001a0b      mov   r15, rcx                            ; arg1
│           0x140001a0e      mov   edi, r8d                            ; arg3
│           0x140001a11      shr   rdi, 0x10
│           0x140001a15      movzx esi, dl
│           0x140001a18      lea   ebx, qword [r14-0x01]
│           0x140001a1c      movzx ebp, r9w
│           0x140001a20      mov   r10d, ebx
│           0x140001a23      and   ebx, 0x1f                           ; 31
│           0x140001a26      shr   r10, 0x05
│           0x140001a2a      lea   rax, qword [rdi+rdi*4]
│           0x140001a2e      and   r10d, 0x7ff                         ; 2047
│           0x140001a35      mov   edx, ebx
│           0x140001a37      mov   ebx, 0x08
│           0x140001a3c      lea   r11, qword [r10+rax*4]
│           0x140001a40      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x140001a47      mov   eax, dword [r10+r11*4+0x2c]
│           0x140001a4c      bt    eax, edx
│       ┌─< 0x140001a4f      jnb   0x140001aa9
│       │   0x140001a51      lea   rcx, qword [rdi+rdi*4]
│       │   0x140001a55      add   rcx, rcx
│       │   0x140001a58      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x140001a5d      jb    0x140001aa9
│      ││   0x140001a5f      and   qword [var_28h], 0x00
│      ││   0x140001a65      lea   rdx, qword [arg_38h]
│      ││   0x140001a6d      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x140001a74      mov   r9d, ebp
│      ││   0x140001a77      mov   r8, qword [arg_28h]
│      ││   0x140001a7f      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x140001a84      mov   qword [var_30h], rbx
│      ││   0x140001a89      mov   qword [var_38h], rdx
│      ││   0x140001a8e      lea   rdx, qword [arg_30h]
│      ││   0x140001a96      mov   qword [var_40h], rbx
│      ││   0x140001a9b      mov   qword [var_48h], rdx
│      ││   0x140001aa0      lea   edx, qword [rbx+0x23]
│      ││   0x140001aa3      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x140001aa9      and   qword [var_20h], 0x00
│           0x140001aaf      lea   rax, qword [arg_38h]
│           0x140001ab7      mov   r9, qword [arg_28h]
│           0x140001abf      mov   r8d, r14d
│           0x140001ac2      mov   qword [var_28h], rbx
│           0x140001ac7      mov   edx, esi
│           0x140001ac9      mov   qword [var_30h], rax
│           0x140001ace      mov   rcx, r15
│           0x140001ad1      lea   rax, qword [arg_30h]
│           0x140001ad9      mov   qword [var_38h], rbx
│           0x140001ade      mov   qword [var_40h], rax
│           0x140001ae3      mov   word [var_48h], bp
│           0x140001ae8      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x140001aed      lea   r11, qword [var_20h + 0x8]
│           0x140001af2      mov   rbx, qword [r11+0x20]
│           0x140001af6      mov   rbp, qword [r11+0x28]
│           0x140001afa      mov   rsi, qword [r11+0x30]
│           0x140001afe      mov   rsp, r11
│           0x140001b01      pop   r15
│           0x140001b03      pop   r14
│           0x140001b05      pop   rdi
└           0x140001b06      ret
┌ fcn.140001b08(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h, int64_t arg_40h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_38h @ stack + 0x38
│           ; arg int64_t arg_40h @ stack + 0x40
│           0x140001b08      mov   qword [var_8h], rbx
│           0x140001b0d      mov   qword [var_10h], rbp
│           0x140001b12      mov   qword [var_18h], rsi
│           0x140001b17      push  rdi
│           0x140001b18      push  r14
│           0x140001b1a      push  r15
│           0x140001b1c      sub   rsp, 0x60
│           0x140001b20      mov   r14d, r8d                           ; arg3
│           0x140001b23      mov   r15, rcx                            ; arg1
│           0x140001b26      mov   edi, r8d                            ; arg3
│           0x140001b29      shr   rdi, 0x10
│           0x140001b2d      movzx esi, dl
│           0x140001b30      lea   ebx, qword [r14-0x01]
│           0x140001b34      movzx ebp, r9w
│           0x140001b38      mov   r10d, ebx
│           0x140001b3b      and   ebx, 0x1f                           ; 31
│           0x140001b3e      shr   r10, 0x05
│           0x140001b42      lea   rax, qword [rdi+rdi*4]
│           0x140001b46      and   r10d, 0x7ff                         ; 2047
│           0x140001b4d      mov   edx, ebx
│           0x140001b4f      mov   ebx, 0x08
│           0x140001b54      lea   r11, qword [r10+rax*4]
│           0x140001b58      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x140001b5f      mov   eax, dword [r10+r11*4+0x2c]
│           0x140001b64      bt    eax, edx
│       ┌─< 0x140001b67      jnb   0x140001bd7
│       │   0x140001b69      lea   rcx, qword [rdi+rdi*4]
│       │   0x140001b6d      add   rcx, rcx
│       │   0x140001b70      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x140001b75      jb    0x140001bd7
│      ││   0x140001b77      and   qword [var_28h], 0x00
│      ││   0x140001b7d      lea   rdx, qword [arg_40h]
│      ││   0x140001b85      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x140001b8c      mov   r9d, ebp
│      ││   0x140001b8f      mov   r8, qword [arg_28h]
│      ││   0x140001b97      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x140001b9c      mov   qword [var_30h], 0x04
│      ││   0x140001ba5      mov   qword [var_38h], rdx
│      ││   0x140001baa      lea   rdx, qword [arg_38h]
│      ││   0x140001bb2      mov   qword [var_40h], rbx
│      ││   0x140001bb7      mov   qword [var_48h], rdx
│      ││   0x140001bbc      lea   rdx, qword [arg_30h]
│      ││   0x140001bc4      mov   qword [var_50h], rbx
│      ││   0x140001bc9      mov   qword [var_58h], rdx
│      ││   0x140001bce      lea   edx, qword [rbx+0x23]
│      ││   0x140001bd1      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x140001bd7      and   qword [var_20h], 0x00
│           0x140001bdd      lea   rax, qword [arg_40h]
│           0x140001be5      mov   r9, qword [arg_28h]
│           0x140001bed      mov   r8d, r14d
│           0x140001bf0      mov   qword [var_28h], 0x04
│           0x140001bf9      mov   edx, esi
│           0x140001bfb      mov   qword [var_30h], rax
│           0x140001c00      mov   rcx, r15
│           0x140001c03      mov   qword [var_38h], rbx
│           0x140001c08      lea   rax, qword [arg_38h]
│           0x140001c10      mov   qword [var_40h], rax
│           0x140001c15      lea   rax, qword [arg_30h]
│           0x140001c1d      mov   qword [var_48h], rbx
│           0x140001c22      mov   qword [var_50h], rax
│           0x140001c27      mov   word [var_58h], bp
│           0x140001c2c      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x140001c31      lea   r11, qword [var_20h + 0x8]
│           0x140001c36      mov   rbx, qword [r11+0x20]
│           0x140001c3a      mov   rbp, qword [r11+0x28]
│           0x140001c3e      mov   rsi, qword [r11+0x30]
│           0x140001c42      mov   rsp, r11
│           0x140001c45      pop   r15
│           0x140001c47      pop   r14
│           0x140001c49      pop   rdi
└           0x140001c4a      ret
┌ fcn.140001cf0(int64_t arg1, int64_t arg3, int64_t arg_28h, int64_t arg_30h, int64_t arg_38h, int64_t arg_40h, int64_t arg_48h, int64_t arg_50h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_78h @ stack - 0x78
│           ; var int64_t var_70h @ stack - 0x70
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_18h @ stack - 0x18
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_38h @ stack + 0x38
│           ; arg int64_t arg_40h @ stack + 0x40
│           ; arg int64_t arg_48h @ stack + 0x48
│           ; arg int64_t arg_50h @ stack + 0x50
│           0x140001cf0      mov   rax, rsp
│           0x140001cf3      mov   qword [rax+0x08], rbx
│           0x140001cf7      mov   qword [rax+0x10], rbp
│           0x140001cfb      mov   qword [rax+0x18], rsi
│           0x140001cff      mov   qword [rax+0x20], rdi
│           0x140001d03      push  r12
│           0x140001d05      push  r14
│           0x140001d07      push  r15
│           0x140001d09      sub   rsp, 0x80
│           0x140001d10      mov   r14d, r8d                           ; arg3
│           0x140001d13      mov   r15, rcx                            ; arg1
│           0x140001d16      mov   edi, r8d                            ; arg3
│           0x140001d19      shr   rdi, 0x10
│           0x140001d1d      movzx esi, dl
│           0x140001d20      lea   ebx, qword [r14-0x01]
│           0x140001d24      movzx ebp, r9w
│           0x140001d28      mov   r10d, ebx
│           0x140001d2b      and   ebx, 0x1f                           ; 31
│           0x140001d2e      shr   r10, 0x05
│           0x140001d32      lea   rax, qword [rdi+rdi*4]
│           0x140001d36      and   r10d, 0x7ff                         ; 2047
│           0x140001d3d      mov   edx, ebx
│           0x140001d3f      mov   ebx, 0x04
│           0x140001d44      lea   r11, qword [r10+rax*4]
│           0x140001d48      mov   r10, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x140001d4f      lea   r12d, qword [rbx+0x04]
│           0x140001d53      mov   eax, dword [r10+r11*4+0x2c]
│           0x140001d58      bt    eax, edx
│       ┌─< 0x140001d5b      jnb   0x140001df3
│       │   0x140001d61      lea   rcx, qword [rdi+rdi*4]
│       │   0x140001d65      add   rcx, rcx
│       │   0x140001d68      cmp   byte [r10+rcx*8+0x29], sil
│      ┌──< 0x140001d6d      jb    0x140001df3
│      ││   0x140001d73      and   qword [var_28h], 0x00
│      ││   0x140001d79      lea   rdx, qword [arg_50h]
│      ││   0x140001d81      mov   rax, qword [0x140004108]            ; [0x140004108:8]=0
│      ││   0x140001d88      mov   r9d, ebp
│      ││   0x140001d8b      mov   r8, qword [arg_28h]
│      ││   0x140001d93      mov   rcx, qword [r10+rcx*8+0x18]
│      ││   0x140001d98      mov   qword [var_30h], rbx
│      ││   0x140001d9d      mov   qword [var_38h], rdx
│      ││   0x140001da2      lea   rdx, qword [arg_48h]
│      ││   0x140001daa      mov   qword [var_40h], rbx
│      ││   0x140001daf      mov   qword [var_48h], rdx
│      ││   0x140001db4      lea   rdx, qword [arg_40h]
│      ││   0x140001dbc      mov   qword [var_50h], rbx
│      ││   0x140001dc1      mov   qword [var_58h], rdx
│      ││   0x140001dc6      lea   rdx, qword [arg_38h]
│      ││   0x140001dce      mov   qword [var_60h], r12
│      ││   0x140001dd3      mov   qword [var_68h], rdx
│      ││   0x140001dd8      lea   rdx, qword [arg_30h]
│      ││   0x140001de0      mov   qword [var_70h], r12
│      ││   0x140001de5      mov   qword [var_78h], rdx
│      ││   0x140001dea      lea   edx, qword [rbx+0x27]
│      ││   0x140001ded      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│      └└─> 0x140001df3      and   qword [var_20h], 0x00
│           0x140001df9      lea   rax, qword [arg_50h]
│           0x140001e01      mov   r9, qword [arg_28h]
│           0x140001e09      mov   r8d, r14d
│           0x140001e0c      mov   qword [var_28h], rbx
│           0x140001e11      mov   edx, esi
│           0x140001e13      mov   qword [var_30h], rax
│           0x140001e18      mov   rcx, r15
│           0x140001e1b      mov   qword [var_38h], rbx
│           0x140001e20      lea   rax, qword [arg_48h]
│           0x140001e28      mov   qword [var_40h], rax
│           0x140001e2d      lea   rax, qword [arg_40h]
│           0x140001e35      mov   qword [var_48h], rbx
│           0x140001e3a      mov   qword [var_50h], rax
│           0x140001e3f      lea   rax, qword [arg_38h]
│           0x140001e47      mov   qword [var_58h], r12
│           0x140001e4c      mov   qword [var_60h], rax
│           0x140001e51      lea   rax, qword [arg_30h]
│           0x140001e59      mov   qword [var_68h], r12
│           0x140001e5e      mov   qword [var_70h], rax
│           0x140001e63      mov   word [var_78h], bp
│           0x140001e68      call  sub.WppRecorder.sys_WppAutoLogTrace
│           0x140001e6d      lea   r11, qword [var_18h]
│           0x140001e75      mov   rbx, qword [r11+0x20]
│           0x140001e79      mov   rbp, qword [r11+0x28]
│           0x140001e7d      mov   rsi, qword [r11+0x30]
│           0x140001e81      mov   rdi, qword [r11+0x38]
│           0x140001e85      mov   rsp, r11
│           0x140001e88      pop   r15
│           0x140001e8a      pop   r14
│           0x140001e8c      pop   r12
└           0x140001e8e      ret
┌ fcn.140001ea0(int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           0x140001ea0      cmp   rcx, qword [0x140004040]            ; [0x140004040:8]=0x2b992ddfa232 ; arg1
│       ┌─< 0x140001ea7      jnz   0x140001eb9
│       │   0x140001ea9      rol   rcx, 0x10                           ; arg1
│       │   0x140001ead      test  cx, 0xffff
│      ┌──< 0x140001eb2      jnz   0x140001eb5
│      ││   0x140001eb4      ret
│      └──> 0x140001eb5      ror   rcx, 0x10                           ; arg1
│      ┌└─> 0x140001eb9      jmp   0x140001ec0
..
│      │    ; CODE XREF from fcn.140001ea0 @ 0x140001eb9
│      └──> 0x140001ec0      mov   ecx, 0x02
│           0x140001ec5      int   0x29
└           0x140001ec7      int3
┌ fcn.140001ed0();
└           0x140001ed0      ret   0x00
┌ fcn.140001ee0(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; arg int64_t arg4 @ r9
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           0x140001ee0      mov   qword [var_8h], rbx
│           0x140001ee5      mov   qword [var_10h], rsi
│           0x140001eea      push  rdi
│           0x140001eeb      sub   rsp, 0x30
│           0x140001eef      mov   rbx, r9                             ; arg4
│           0x140001ef2      mov   rsi, r8                             ; arg3
│           0x140001ef5      mov   rdi, rdx                            ; arg2
│           0x140001ef8      test  r9, r9                              ; arg4
│       ┌─< 0x140001efb      jnz   0x140001f01
│       │   ; CODE XREF from fcn.140001ee0 @ 0x140001f1b
│      ┌──> 0x140001efd      xor   eax, eax
│     ┌───< 0x140001eff      jmp   0x140001f5b
│     │╎└─> 0x140001f01      test  rcx, rcx                            ; arg1
│     │╎┌─< 0x140001f04      jz    0x140001f3f
│     │╎│   0x140001f06      test  rsi, rsi
│    ┌────< 0x140001f09      jz    0x140001f1d
│    ││╎│   0x140001f0b      cmp   rdi, rbx
│   ┌─────< 0x140001f0e      jb    0x140001f1d
│   │││╎│   0x140001f10      mov   r8, rbx
│   │││╎│   0x140001f13      mov   rdx, rsi
│   │││╎│   0x140001f16      call  0x140002640
│   │││└──< 0x140001f1b      jmp   0x140001efd
│   └└────> 0x140001f1d      mov   r8, rdi
│     │ │   0x140001f20      xor   edx, edx
│     │ │   0x140001f22      call  0x140002900
│     │ │   0x140001f27      test  rsi, rsi
│     │┌──< 0x140001f2a      jz    0x140001f3f
│     │││   0x140001f2c      cmp   rdi, rbx
│    ┌────< 0x140001f2f      jnb   0x140001f38
│    ││││   0x140001f31      mov   ebx, 0x22                           ; '"' ; 34
│   ┌─────< 0x140001f36      jmp   0x140001f44
│   │└────> 0x140001f38      mov   eax, 0x16                           ; 22
│   │┌────< 0x140001f3d      jmp   0x140001f5b
│   │││└└─> 0x140001f3f      mov   ebx, 0x16                           ; 22
│   │││     ; CODE XREF from fcn.140001ee0 @ 0x140001f36
│   └─────> 0x140001f44      and   qword [var_18h], 0x00
│    ││     0x140001f4a      xor   r9d, r9d
│    ││     0x140001f4d      xor   r8d, r8d
│    ││     0x140001f50      xor   edx, edx
│    ││     0x140001f52      xor   ecx, ecx
│    ││     0x140001f54      call  fcn.140001ed0
│    ││     0x140001f59      mov   eax, ebx
│    ││     ; CODE XREFS from fcn.140001ee0 @ 0x140001eff, 0x140001f3d
│    └└───> 0x140001f5b      mov   rbx, qword [var_8h]
│           0x140001f60      mov   rsi, qword [var_10h]
│           0x140001f65      add   rsp, 0x30
│           0x140001f69      pop   rdi
└           0x140001f6a      ret
┌ fcn.140001f8c(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           0x140001f8c      sub   rsp, 0x28
│           0x140001f90      mov   eax, dword [r8]                     ; arg3
│           0x140001f93      mov   r9, rcx                             ; arg1
│           0x140001f96      mov   r11d, eax
│           0x140001f99      mov   r10, rcx                            ; arg1
│           0x140001f9c      and   r11d, 0xfffffff8                    ; 4294967288
│           0x140001fa0      test  al, 0x04                            ; 4
│       ┌─< 0x140001fa2      jz    0x140001fb7
│       │   0x140001fa4      mov   eax, dword [r8+0x08]                ; arg3
│       │   0x140001fa8      movsxd r10, dword [r8+0x04]               ; arg3
│       │   0x140001fac      neg   eax
│       │   0x140001fae      add   r10, rcx                            ; arg1
│       │   0x140001fb1      movsxd rcx, eax
│       │   0x140001fb4      and   r10, rcx
│       └─> 0x140001fb7      movsxd rax, r11d
│           0x140001fba      mov   r8, qword [rax+r10*1]
│           0x140001fbe      mov   rax, qword [rdx+0x10]               ; arg2
│           0x140001fc2      mov   ecx, dword [rax+0x08]
│           0x140001fc5      mov   rax, qword [rdx+0x08]               ; arg2
│           0x140001fc9      movzx edx, byte [rcx+rax*1+0x03]
│           0x140001fce      test  dl, 0x0f                            ; 0xf ; 15
│       ┌─< 0x140001fd1      jz    0x140001fdb
│       │   0x140001fd3      mov   eax, edx
│       │   0x140001fd5      and   eax, 0xfffffff0                     ; 4294967280
│       │   0x140001fd8      add   r9, rax
│       └─> 0x140001fdb      xor   r9, r8
│           0x140001fde      mov   rcx, r9
│           0x140001fe1      call  fcn.140001ea0
│           0x140001fe6      add   rsp, 0x28
└           0x140001fea      ret
┌ fcn.140001ff0(int64_t arg2);
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_14h @ stack - 0x14
│           ; var int64_t var_10h @ stack - 0x10
│           ; var int64_t var_ch @ stack - 0xc
│           0x140001ff0      push  rbx
│           0x140001ff2      sub   rsp, 0x10
│           0x140001ff6      xor   eax, eax
│           0x140001ff8      xor   ecx, ecx
│           0x140001ffa      cpuid
│           0x140001ffc      mov   r8d, eax
│           0x140001fff      xor   ecx, ecx
│           0x140002001      mov   eax, 0x01
│           0x140002006      xor   r9b, r9b
│           0x140002009      cpuid
│           0x14000200b      mov   dword [rsp], eax
│           0x14000200e      mov   r10d, ecx
│           0x140002011      mov   eax, 0x07
│           0x140002016      mov   dword [var_14h], ebx
│           0x14000201a      mov   dword [var_10h], ecx
│           0x14000201e      mov   dword [var_ch], edx                 ; arg2
│           0x140002022      cmp   r8d, eax
│       ┌─< 0x140002025      jl    0x14000204b
│       │   0x140002027      xor   ecx, ecx
│       │   0x140002029      movzx r9d, r9b
│       │   0x14000202d      cpuid
│       │   0x14000202f      mov   dword [rsp], eax
│       │   0x140002032      bt    ebx, 0x09
│       │   0x140002036      mov   eax, 0x02
│       │   0x14000203b      mov   dword [var_14h], ebx
│       │   0x14000203f      cmovb r9d, eax
│       │   0x140002043      mov   dword [var_10h], ecx
│       │   0x140002047      mov   dword [var_ch], edx                 ; arg2
│       └─> 0x14000204b      bt    r10d, 0x14
│       ┌─< 0x140002050      jnb   0x140002078
│       │   0x140002052      bt    r10d, 0x1b
│      ┌──< 0x140002057      jnb   0x140002078
│      ││   0x140002059      bt    r10d, 0x1c
│     ┌───< 0x14000205e      jnb   0x140002078
│     │││   0x140002060      xor   ecx, ecx
│     │││   0x140002062      xgetbv
│     │││   0x140002065      shl   rdx, 0x20                           ; arg2
│     │││   0x140002069      or    rdx, rax                            ; arg2
│     │││   0x14000206c      and   dl, 0x06
│     │││   0x14000206f      cmp   dl, 0x06                            ; 6
│    ┌────< 0x140002072      jnz   0x140002078
│    ││││   0x140002074      or    r9b, 0x04
│    └└└└─> 0x140002078      or    r9b, 0x01
│           0x14000207c      mov   byte [0x140004080], r9b             ; [0x140004080:1]=2
│           0x140002083      xor   eax, eax
│           0x140002085      add   rsp, 0x10
│           0x140002089      pop   rbx
└           0x14000208a      ret
┌ fcn.14000208c();
│           0x14000208c      sub   rsp, 0x28
│           0x140002090      lea   rcx, qword [0x140004088]            ; "0"
│           0x140002097      call  fcn.1400024cc
│           0x14000209c      mov   r8, qword [0x140004360]             ; [0x140004360:8]=0
│           0x1400020a3      lea   rdx, qword [0x140004088]            ; "0"
│           0x1400020aa      lea   rcx, qword [0x140004348]
│           0x1400020b1      call  sub.WDFLDR.SYS_WdfVersionUnbind
│           0x1400020b6      add   rsp, 0x28
└           0x1400020ba      ret
┌ entry0(int64_t arg2, int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_8h @ stack + 0x8
│           0x1400020c0      mov   qword [var_8h], rbx
│           0x1400020c5      push  rdi
│           0x1400020c6      sub   rsp, 0x20
│           0x1400020ca      mov   rbx, rdx                            ; arg2
│           0x1400020cd      mov   rdi, rcx                            ; arg1
│           0x1400020d0      call  fcn.1400081cc
│           0x1400020d5      mov   rdx, rbx
│           0x1400020d8      mov   rcx, rdi
│           0x1400020db      call  fcn.1400020ec
│           0x1400020e0      mov   rbx, qword [var_8h]
│           0x1400020e5      add   rsp, 0x20
│           0x1400020e9      pop   rdi
└           0x1400020ea      ret
            ; CALL XREF from entry0 @ 0x1400020db
┌ fcn.1400020ec(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; var int64_t var_20h @ stack + 0x20
│           0x1400020ec      mov   rax, rsp
│           0x1400020ef      mov   qword [rax+0x08], rbx
│           0x1400020f3      mov   qword [rax+0x10], rbp
│           0x1400020f7      mov   qword [rax+0x18], rsi
│           0x1400020fb      mov   qword [rax+0x20], rdi
│           0x1400020ff      push  r14
│           0x140002101      sub   rsp, 0x30
│           0x140002105      xor   ebp, ebp
│           0x140002107      mov   rsi, rdx                            ; arg2
│           0x14000210a      mov   rdi, rcx                            ; arg1
│           0x14000210d      test  rcx, rcx                            ; arg1
│       ┌─< 0x140002110      jnz   0x14000211c
│       │   0x140002112      call  section.INIT
│      ┌──< 0x140002117      jmp   0x1400021d8
│      │└─> 0x14000211c      lea   rax, qword [0x140004130]
│      │    0x140002123      mov   qword [0x140004368], rdi            ; [0x140004368:8]=0
│      │    0x14000212a      lea   r14, qword [0x140004348]
│      │    0x140002131      mov   dword [0x140004348], 0x2080000      ; [0x140004348:4]=0
│      │    0x14000213b      mov   rcx, r14
│      │    0x14000213e      mov   qword [0x140004350], rax            ; [0x140004350:8]=0
│      │    0x140002145      call  qword [sym.imp.ntoskrnl.exe_RtlCopyUnicodeString] ; [0x140003070:8]=0x843e ; ">\x84"
│      │    0x14000214c      nop   dword [rax+rax*1], eax
│      │    0x140002151      lea   r9, qword [0x140004360]
│      │    0x140002158      mov   rdx, r14
│      │    0x14000215b      lea   r8, qword [0x140004088]             ; "0"
│      │    0x140002162      mov   rcx, rdi
│      │    0x140002165      call  0x1400025b9
│      │    0x14000216a      test  eax, eax
│      │┌─< 0x14000216c      js    0x1400021d8
│      ││   0x14000216e      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│      ││   0x140002175      lea   rcx, qword [0x140004088]            ; "0"
│      ││   0x14000217c      mov   rdx, qword [rax+0x648]
│      ││   0x140002183      mov   qword [0x140004338], rdx            ; [0x140004338:8]=0
│      ││   0x14000218a      call  0x140002348
│      ││   0x14000218f      mov   ebx, eax
│      ││   0x140002191      test  eax, eax
│     ┌───< 0x140002193      js    0x1400021d1
│     │││   0x140002195      call  0x140002280
│     │││   0x14000219a      mov   ebx, eax
│     │││   0x14000219c      test  eax, eax
│    ┌────< 0x14000219e      js    0x1400021d1
│    ││││   0x1400021a0      mov   rdx, rsi
│    ││││   0x1400021a3      mov   rcx, rdi
│    ││││   0x1400021a6      call  section.INIT
│    ││││   0x1400021ab      mov   ebx, eax
│    ││││   0x1400021ad      test  eax, eax
│   ┌─────< 0x1400021af      jns   0x1400021f4
│   │││││   0x1400021b1      xor   edx, edx
│   │││││   0x1400021b3      mov   qword [rsp+0x20], r14
│   │││││   0x1400021b8      mov   r9d, eax
│   │││││   0x1400021bb      lea   r8, qword str.DriverEntry_failed_0x_x_for_driver__wZ ; 0x1400031b8 ; "DriverEntry failed 0x%x for driver %wZ\n"
│   │││││   0x1400021c2      lea   ecx, qword [rdx+0x4d]
│   │││││   0x1400021c5      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│   │││││   0x1400021cc      nop   dword [rax+rax*1], eax
│   │└└───> 0x1400021d1      call  fcn.14000208c
│   │  ││   0x1400021d6      mov   eax, ebx
│   │  ││   ; CODE XREFS from fcn.1400020ec @ 0x140002117, 0x14000223e
│   │ ┌└└─> 0x1400021d8      mov   rbx, qword [var_8h]
│   │ ╎     0x1400021dd      mov   rbp, qword [var_10h]
│   │ ╎     0x1400021e2      mov   rsi, qword [var_18h]
│   │ ╎     0x1400021e7      mov   rdi, qword [var_20h]
│   │ ╎     0x1400021ec      add   rsp, 0x30
│   │ ╎     0x1400021f0      pop   r14
│   │ ╎     0x1400021f2      ret
..
│   └─────> 0x1400021f4      mov   rax, qword [0x140004360]            ; [0x140004360:8]=0
│     ╎     0x1400021fb      cmp   byte [rax+0x30], bpl
│     ╎ ┌─< 0x1400021ff      jz    0x140002227
│     ╎ │   0x140002201      mov   rcx, qword [rdi+0x68]
│     ╎ │   0x140002205      mov   rax, qword [0x140004370]            ; [0x140004370:8]=0
│     ╎ │   0x14000220c      test  rcx, rcx
│     ╎ │   0x14000220f      cmovnz rax, rcx
│     ╎ │   0x140002213      mov   qword [0x140004370], rax            ; [0x140004370:8]=0
│     ╎ │   0x14000221a      lea   rax, qword [0x140002250]
│     ╎ │   0x140002221      mov   qword [rdi+0x68], rax
│     ╎┌──< 0x140002225      jmp   0x14000223c
│     ╎│└─> 0x140002227      mov   eax, dword [rax+0x08]
│     ╎│    0x14000222a      test  al, 0x02                            ; 2
│     ╎│┌─< 0x14000222c      jz    0x14000223c
│     ╎││   0x14000222e      lea   rax, qword [0x140002240]
│     ╎││   0x140002235      mov   qword [0x140004338], rax            ; [0x140004338:8]=0
│     ╎││   ; CODE XREF from fcn.1400020ec @ 0x140002225
│     ╎└└─> 0x14000223c      xor   eax, eax
└     └───< 0x14000223e      jmp   0x1400021d8
            ; CALL XREF from fcn.1400020ec @ 0x140002195
┌ fcn.140002280();
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_10h @ stack - 0x10
│           ; var int64_t var_8h @ stack + 0x8
│           0x140002280      mov   qword [var_8h], rbx
│           0x140002285      push  rdi
│           0x140002286      sub   rsp, 0x30
│           0x14000228a      lea   r9, qword [0x1400040e0]
│           0x140002291      lea   rdi, qword [0x1400040f0]
│           0x140002298      cmp   r9, rdi
│       ┌─< 0x14000229b      jbe   0x1400022c9
│       │   0x14000229d      xor   edx, edx
│       │   0x14000229f      mov   dword [var_10h], 0xc000007b         ; '{'
│       │                                                              ; [0xc000007b:4]=-1
│       │   0x1400022a7      lea   r8, qword str.FxStubInitTypes:_invalid_driver_image__the_address_of_symbol___KMDF_TYPE_INIT_START_0x_p_is_greater_than_the_address_of_symbol___KMDF_TYPE_INIT_END_0x_p__status_0x_x ; 0x1400031e0 ; "FxStubInitTypes: invalid driver image, the address of symbol __KMDF_TYPE_INIT_START 0x%p is greater than the address of symbol _"
│       │   0x1400022ae      mov   qword [var_18h], rdi
│       │   0x1400022b3      lea   ecx, qword [rdx+0x4d]
│       │   0x1400022b6      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│       │   0x1400022bd      nop   dword [rax+rax*1], eax
│       │   ; CODE XREF from fcn.140002280 @ 0x140002335
│      ┌──> 0x1400022c2      mov   eax, 0xc000007b                     ; '{'
│     ┌───< 0x1400022c7      jmp   0x140002339
│     │╎└─> 0x1400022c9      lea   rcx, qword [0x1400040f0]
│     │╎    ; CODE XREF from fcn.140002280 @ 0x14000231b
│     │╎┌─> 0x1400022d0      lea   rax, qword [rcx+0x08]
│    ┌────< 0x1400022d4      jmp   0x1400022e3
│   ┌─────> 0x1400022d6      cmp   qword [rcx], 0x00
│  ┌──────< 0x1400022da      jnz   0x1400022e8
│  │╎││╎╎   0x1400022dc      mov   rcx, rax
│  │╎││╎╎   0x1400022df      add   rax, 0x08
│  │╎││╎╎   ; CODE XREF from fcn.140002280 @ 0x1400022d4
│  │╎└────> 0x1400022e3      cmp   rax, rdi
│  │└─────< 0x1400022e6      jbe   0x1400022d6
│  └──────> 0x1400022e8      cmp   rcx, rdi
│    ┌────< 0x1400022eb      jnb   0x140002337
│    ││╎╎   0x1400022ed      lea   rax, qword [rcx+0x28]
│    ││╎╎   0x1400022f1      cmp   rax, rdi
│   ┌─────< 0x1400022f4      jnbe  0x14000231d
│   │││╎╎   0x1400022f6      cmp   dword [rcx], 0x28                   ; '('
│  ┌──────< 0x1400022f9      jnz   0x14000231d
│  ││││╎╎   0x1400022fb      mov   rbx, rcx
│  ││││╎╎   0x1400022fe      test  rcx, rcx
│ ┌───────< 0x140002301      jz    0x14000231d
│ │││││╎╎   0x140002303      mov   rax, qword [rcx+0x20]
│ │││││╎╎   0x140002307      test  rax, rax
│ ────────< 0x14000230a      jz    0x140002316
│ │││││╎╎   0x14000230c      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│ │││││╎╎   0x140002312      mov   qword [rbx+0x18], rax
│ ────────> 0x140002316      mov   ecx, dword [rbx]
│ │││││╎╎   0x140002318      add   rcx, rbx
│ │││││╎└─< 0x14000231b      jmp   0x1400022d0
│ └└└─────> 0x14000231d      xor   edx, edx
│    ││╎    0x14000231f      lea   r8, qword str.FxGetNextObjectContextTypeInfo_failed ; 0x140003288 ; "FxGetNextObjectContextTypeInfo failed\n"
│    ││╎    0x140002326      lea   ecx, qword [rdx+0x4d]
│    ││╎    0x140002329      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│    ││╎    0x140002330      nop   dword [rax+rax*1], eax
│    ││└──< 0x140002335      jmp   0x1400022c2
│    └────> 0x140002337      xor   eax, eax
│     │     ; CODE XREF from fcn.140002280 @ 0x1400022c7
│     └───> 0x140002339      mov   rbx, qword [var_8h]
│           0x14000233e      add   rsp, 0x30
│           0x140002342      pop   rdi
└           0x140002343      ret
            ; CALL XREF from fcn.1400020ec @ 0x14000218a
┌ fcn.140002348(int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           0x140002348      mov   rax, rsp
│           0x14000234b      mov   qword [rax+0x08], rbx
│           0x14000234f      mov   qword [rax+0x10], rbp
│           0x140002353      mov   qword [rax+0x18], rsi
│           0x140002357      push  rdi
│           0x140002358      sub   rsp, 0x40
│           0x14000235c      xor   edi, edi
│           0x14000235e      lea   r9, qword [0x1400040c0]
│           0x140002365      lea   rbp, qword [0x1400040d0]
│           0x14000236c      mov   rsi, rcx                            ; arg1
│           0x14000236f      cmp   r9, rbp
│       ┌─< 0x140002372      jbe   0x1400023a1
│       │   0x140002374      mov   dword [rax-0x20], 0xc000007b        ; '{'
│       │                                                              ; [0xc000007b:4]=-1
│       │   0x14000237b      lea   r8, qword str.FxStubBindClasses:_invalid_driver_image__the_address_of_symbol___KMDF_CLASS_BIND_START_0x_p_is_greater_than_the_address_of_symbol___KMDF_CLASS_BIND_END_0x_p__status_0x_x ; 0x1400032b0 ; "FxStubBindClasses: invalid driver image, the address of symbol __KMDF_CLASS_BIND_START 0x%p is greater than the address of symbo"
│       │   0x140002382      xor   edx, edx
│       │   0x140002384      mov   qword [rax-0x28], rbp
│       │   0x140002388      lea   ecx, qword [rdi+0x4d]
│       │   0x14000238b      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│       │   0x140002392      nop   dword [rax+rax*1], eax
│       │   ; CODE XREF from fcn.140002348 @ 0x1400024c5
│      ┌──> 0x140002397      mov   eax, 0xc000007b                     ; '{'
│     ┌───< 0x14000239c      jmp   0x14000244b
│     │╎└─> 0x1400023a1      lea   rcx, qword [0x1400040d0]
│     │╎    ; CODE XREF from fcn.140002348 @ 0x14000247e
│     │╎┌─> 0x1400023a8      lea   rax, qword [rcx+0x08]
│    ┌────< 0x1400023ac      jmp   0x1400023bb
│   ┌─────> 0x1400023ae      cmp   qword [rcx], 0x00
│  ┌──────< 0x1400023b2      jnz   0x1400023c0
│  │╎││╎╎   0x1400023b4      mov   rcx, rax
│  │╎││╎╎   0x1400023b7      add   rax, 0x08
│  │╎││╎╎   ; CODE XREF from fcn.140002348 @ 0x1400023ac
│  │╎└────> 0x1400023bb      cmp   rax, rbp
│  │└─────< 0x1400023be      jbe   0x1400023ae
│  └──────> 0x1400023c0      cmp   rcx, rbp
│    ┌────< 0x1400023c3      jnb   0x140002449
│    ││╎╎   0x1400023c9      lea   rax, qword [rcx+0x50]
│    ││╎╎   0x1400023cd      cmp   rax, rbp
│   ┌─────< 0x1400023d0      jnbe  0x1400024ad
│   │││╎╎   0x1400023d6      cmp   dword [rcx], 0x50                   ; 'P'
│  ┌──────< 0x1400023d9      jnz   0x1400024ad
│  ││││╎╎   0x1400023df      mov   rbx, rcx
│  ││││╎╎   0x1400023e2      test  rcx, rcx
│ ┌───────< 0x1400023e5      jz    0x1400024ad
│ │││││╎╎   0x1400023eb      mov   rax, qword [rcx+0x38]
│ │││││╎╎   0x1400023ef      mov   qword [0x1400040d8], rcx            ; [0x1400040d8:8]=0x1400040c0
│ │││││╎╎   0x1400023f6      test  rax, rax
│ ────────< 0x1400023f9      jz    0x140002461
│ │││││╎╎   0x1400023fb      mov   r8, qword [0x140004360]             ; [0x140004360:8]=0
│ │││││╎╎   0x140002402      mov   r9, rcx
│ │││││╎╎   0x140002405      lea   rcx, qword [0x1400025d0]
│ │││││╎╎   0x14000240c      mov   rdx, rsi
│ │││││╎╎   0x14000240f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│ │││││╎╎   0x140002415      mov   edi, eax
│ │││││╎╎   0x140002417      test  eax, eax
│ ────────< 0x140002419      jns   0x140002479
│ │││││╎╎   0x14000241b      mov   r9, qword [rbx+0x38]
│ │││││╎╎   0x14000241f      lea   r8, qword str.FxStubBindClasses:_ClientBindClass__p__WDF_CLASS_BIND_INFO_0x_p__class__S__returned_status_0x_x ; 0x140003380 ; "FxStubBindClasses: ClientBindClass %p, WDF_CLASS_BIND_INFO 0x%p, class %S, returned status 0x%x\n"
│ │││││╎╎   0x140002426      mov   dword [var_20h + 0x8], eax
│ │││││╎╎   0x14000242a      xor   edx, edx
│ │││││╎╎   0x14000242c      mov   rax, qword [rbx+0x08]
│ │││││╎╎   0x140002430      mov   qword [var_20h], rax
│ │││││╎╎   0x140002435      mov   qword [var_28h], rbx
│ │││││╎╎   0x14000243a      lea   ecx, qword [rdx+0x4d]
│ │││││╎╎   0x14000243d      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│ │││││╎╎   0x140002444      nop   dword [rax+rax*1], eax
│ │││││╎╎   ; CODE XREF from fcn.140002348 @ 0x1400024ab
│ ───└────> 0x140002449      mov   eax, edi
│ │││ │╎╎   ; CODE XREF from fcn.140002348 @ 0x14000239c
│ │││ └───> 0x14000244b      mov   rbx, qword [var_8h]
│ │││  ╎╎   0x140002450      mov   rbp, qword [var_10h]
│ │││  ╎╎   0x140002455      mov   rsi, qword [var_18h]
│ │││  ╎╎   0x14000245a      add   rsp, 0x40
│ │││  ╎╎   0x14000245e      pop   rdi
│ │││  ╎╎   0x14000245f      ret
..
│ ────────> 0x140002461      mov   rdx, qword [0x140004360]            ; [0x140004360:8]=0
│ │││  ╎╎   0x140002468      mov   r8, rbx
│ │││  ╎╎   0x14000246b      mov   rcx, rsi
│ │││  ╎╎   0x14000246e      call  0x1400025d0
│ │││  ╎╎   0x140002473      mov   edi, eax
│ │││  ╎╎   0x140002475      test  eax, eax
│ │││ ┌───< 0x140002477      js    0x140002483
│ ────────> 0x140002479      mov   ecx, dword [rbx]
│ │││ │╎╎   0x14000247b      add   rcx, rbx
│ │││ │╎└─< 0x14000247e      jmp   0x1400023a8
│ │││ └───> 0x140002483      mov   rax, qword [rbx+0x08]
│ │││  ╎    0x140002487      lea   r8, qword str.FxStubBindClasses:_VersionBindClass_WDF_CLASS_BIND_INFO_0x_p__class__S__returned_status_0x_x ; 0x1400033f0 ; "FxStubBindClasses: VersionBindClass WDF_CLASS_BIND_INFO 0x%p, class %S, returned status 0x%x\n"
│ │││  ╎    0x14000248e      xor   edx, edx
│ │││  ╎    0x140002490      mov   dword [var_20h], edi
│ │││  ╎    0x140002494      mov   r9, rbx
│ │││  ╎    0x140002497      mov   qword [var_28h], rax
│ │││  ╎    0x14000249c      lea   ecx, qword [rdx+0x4d]
│ │││  ╎    0x14000249f      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│ │││  ╎    0x1400024a6      nop   dword [rax+rax*1], eax
│ ────────< 0x1400024ab      jmp   0x140002449
│ └└└─────> 0x1400024ad      xor   edx, edx
│      ╎    0x1400024af      lea   r8, qword str.FxGetNextClassBindInfo_failed ; 0x140003360 ; "FxGetNextClassBindInfo failed\n"
│      ╎    0x1400024b6      lea   ecx, qword [rdx+0x4d]
│      ╎    0x1400024b9      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│      ╎    0x1400024c0      nop   dword [rax+rax*1], eax
└      └──< 0x1400024c5      jmp   0x140002397
            ; CALL XREF from fcn.14000208c @ 0x140002097
┌ fcn.1400024cc(int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           0x1400024cc      mov   qword [var_8h], rbx
│           0x1400024d1      mov   qword [var_10h], rsi
│           0x1400024d6      push  rdi
│           0x1400024d7      sub   rsp, 0x30
│           0x1400024db      mov   rdi, qword [0x1400040d8]            ; [0x1400040d8:8]=0x1400040c0
│           0x1400024e2      lea   rax, qword [0x1400040c0]
│           0x1400024e9      lea   rbx, qword [0x1400040d0]
│           0x1400024f0      mov   rsi, rcx                            ; arg1
│           0x1400024f3      cmp   rdi, rax
│       ┌─< 0x1400024f6      jz    0x140002590
│       │   0x1400024fc      add   rdi, 0x50                           ; 80
│       │   ; CODE XREF from fcn.1400024cc @ 0x140002576
│      ┌──> 0x140002500      lea   rax, qword [rbx+0x08]
│     ┌───< 0x140002504      jmp   0x140002513
│    ┌────> 0x140002506      cmp   qword [rbx], 0x00
│   ┌─────< 0x14000250a      jnz   0x140002518
│   │╎│╎│   0x14000250c      mov   rbx, rax
│   │╎│╎│   0x14000250f      add   rax, 0x08
│   │╎│╎│   ; CODE XREF from fcn.1400024cc @ 0x140002504
│   │╎└───> 0x140002513      cmp   rax, rdi
│   │└────< 0x140002516      jbe   0x140002506
│   └─────> 0x140002518      cmp   rbx, rdi
│     ┌───< 0x14000251b      jb    0x140002522
│     │╎│   0x14000251d      mov   rbx, rdi
│    ┌────< 0x140002520      jmp   0x140002530
│    │└───> 0x140002522      lea   rax, qword [rbx+0x50]
│    │ ╎│   0x140002526      cmp   rax, rdi
│    │┌───< 0x140002529      jnbe  0x140002578
│    ││╎│   0x14000252b      cmp   dword [rbx], 0x50                   ; 'P'
│   ┌─────< 0x14000252e      jnz   0x140002578
│   │││╎│   ; CODE XREF from fcn.1400024cc @ 0x140002520
│   │└────> 0x140002530      test  rbx, rbx
│   │┌────< 0x140002533      jz    0x140002578
│   │││╎│   0x140002535      cmp   rbx, rdi
│  ┌──────< 0x140002538      jnb   0x140002590
│  ││││╎│   0x14000253a      mov   rax, qword [rbx+0x40]
│  ││││╎│   0x14000253e      test  rax, rax
│ ┌───────< 0x140002541      jz    0x14000255f
│ │││││╎│   0x140002543      mov   r8, qword [0x140004360]             ; [0x140004360:8]=0
│ │││││╎│   0x14000254a      lea   rcx, qword [0x1400025e0]
│ │││││╎│   0x140002551      mov   r9, rbx
│ │││││╎│   0x140002554      mov   rdx, rsi
│ │││││╎│   0x140002557      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│ ────────< 0x14000255d      jmp   0x140002571
│ └───────> 0x14000255f      mov   rdx, qword [0x140004360]            ; [0x140004360:8]=0
│  ││││╎│   0x140002566      mov   r8, rbx
│  ││││╎│   0x140002569      mov   rcx, rsi
│  ││││╎│   0x14000256c      call  0x1400025e0
│  ││││╎│   ; CODE XREF from fcn.1400024cc @ 0x14000255d
│ ────────> 0x140002571      mov   eax, dword [rbx]
│  ││││╎│   0x140002573      add   rbx, rax
│  ││││└──< 0x140002576      jmp   0x140002500
│  │└└└───> 0x140002578      xor   edx, edx
│  │    │   0x14000257a      lea   r8, qword str.FxGetNextClassBindInfo_failed ; 0x140003360 ; "FxGetNextClassBindInfo failed\n"
│  │    │   0x140002581      lea   ecx, qword [rdx+0x4d]
│  │    │   0x140002584      call  qword [sym.imp.ntoskrnl.exe_DbgPrintEx] ; [0x140003080:8]=0x8456 ; "V\x84"
│  │    │   0x14000258b      nop   dword [rax+rax*1], eax
│  └────└─> 0x140002590      mov   rbx, qword [var_8h]
│           0x140002595      mov   rsi, qword [var_10h]
│           0x14000259a      add   rsp, 0x30
│           0x14000259e      pop   rdi
└           0x14000259f      ret
            ; XREFS: CALL 0x140001419  CALL 0x14000150c  CALL 0x14000162c
            ; XREFS: CALL 0x140001720  CALL 0x140001864  CALL 0x1400019d0
            ; XREFS: CALL 0x140001ae8  CALL 0x140001c2c  CALL 0x140001e68
┌ sub.WppRecorder.sys_WppAutoLogTrace();
└           0x1400025a1      jmp   qword [sym.imp.WppRecorder.sys_WppAutoLogTrace] ; [0x140003040:8]=0x83e0
┌ sub.WppRecorder.sys_WppAutoLogStart();
└           0x1400025a7      jmp   qword [sym.imp.WppRecorder.sys_WppAutoLogStart] ; [0x140003038:8]=0x83f2
┌ sub.WppRecorder.sys_WppAutoLogStop();
└           0x1400025ad      jmp   qword [sym.imp.WppRecorder.sys_WppAutoLogStop] ; [0x140003030:8]=0x8404
            ; CALL XREF from fcn.1400020ec @ 0x140002165
┌ sub.WDFLDR.SYS_WdfVersionBind();
└           0x1400025b9      jmp   qword [sym.imp.WDFLDR.SYS_WdfVersionBind] ; [0x140003018:8]=0x8464 ; "d\x84"
            ; CALL XREF from fcn.14000208c @ 0x1400020b1
┌ sub.WDFLDR.SYS_WdfVersionUnbind();
└           0x1400025bf      jmp   qword [sym.imp.WDFLDR.SYS_WdfVersionUnbind] ; [0x140003010:8]=0x8476 ; "v\x84"
            ; CALL XREFS from fcn.140002348 @ 0x140002405, 0x14000246e
┌ sub.WDFLDR.SYS_WdfVersionBindClass();
└           0x1400025d0      jmp   qword [sym.imp.WDFLDR.SYS_WdfVersionBindClass] ; [0x140003008:8]=0x848a
            ; CALL XREFS from fcn.1400024cc @ 0x14000254a, 0x14000256c
┌ sub.WDFLDR.SYS_WdfVersionUnbindClass();
└           0x1400025e0      jmp   qword [sym.imp.WDFLDR.SYS_WdfVersionUnbindClass] ; [0x140003000:8]=0x84a0
            ; CALL XREF from fcn.140001ee0 @ 0x140001f16
┌ fcn.140002640(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           0x140002640      mov   rax, rcx                            ; arg1
│           0x140002643      cmp   r8, 0x08                            ; 8 ; arg3
│       ┌─< 0x140002647      jb    0x140002680
│       │   0x140002649      cmp   r8, 0x10                            ; 16 ; arg3
│      ┌──< 0x14000264d      jnbe  0x140002660
│      ││   0x14000264f      mov   r11, qword [rdx]                    ; arg2
│      ││   0x140002652      mov   rdx, qword [rdx+r8*1-0x08]          ; arg2
│      ││   0x140002657      mov   qword [rcx], r11                    ; arg1
│      ││   0x14000265a      mov   qword [rcx+r8*1-0x08], rdx          ; arg2
│      ││   0x14000265f      ret
│      └──> 0x140002660      cmp   r8, 0x20                            ; 32 ; arg3
│      ┌──< 0x140002664      jnbe  0x1400026c0
│      ││   0x140002666      movups xmm0, xmmword [rdx]                ; arg2
│      ││   0x140002669      movups xmm1, xmmword [rdx+r8*1-0x10]      ; arg2
│      ││   0x14000266f      movups xmmword [rcx], xmm0                ; arg1
│      ││   0x140002672      movups xmmword [rcx+r8*1-0x10], xmm1      ; arg1
│      ││   0x140002678      ret
..
│      │└─> 0x140002680      test  r8, r8                              ; arg3
│      │┌─< 0x140002683      jz    0x14000269a
│      ││   0x140002685      sub   rdx, rcx                            ; arg2
│     ┌───< 0x140002688      jb    0x1400026a0
│    ┌────> 0x14000268a      mov   r11b, byte [rcx+rdx*1]              ; arg1
│    ╎│││   0x14000268e      inc   rcx                                 ; arg1
│    ╎│││   0x140002691      dec   r8                                  ; arg3
│    ╎│││   0x140002694      mov   byte [rcx-0x01], r11b               ; arg1
│    └────< 0x140002698      jnz   0x14000268a
│     ││└─> 0x14000269a      ret
..
│     └───> 0x1400026a0      add   rcx, r8                             ; arg3
│      │┌─> 0x1400026a3      mov   r11b, byte [rcx+rdx*1-0x01]         ; arg1
│      │╎   0x1400026a8      dec   rcx                                 ; arg1
│      │╎   0x1400026ab      dec   r8                                  ; arg3
│      │╎   0x1400026ae      mov   byte [rcx], r11b                    ; arg1
│      │└─< 0x1400026b1      jnz   0x1400026a3
│      │    0x1400026b3      ret
..
│      └──> 0x1400026c0      lea   r11, qword [rdx+r8*1]               ; arg2
│           0x1400026c4      sub   rdx, rcx                            ; arg2
│       ┌─< 0x1400026c7      jnb   0x1400026d2
│       │   0x1400026c9      cmp   r11, rcx                            ; arg1
│      ┌──< 0x1400026cc      jnbe  0x140002840
│      │└─> 0x1400026d2      movups xmm0, xmmword [rcx+rdx*1]          ; arg1
│      │    0x1400026d6      add   rcx, 0x10                           ; 16 ; arg1
│      │    0x1400026da      test  cl, 0x0f                            ; 0xf ; 15
│      │┌─< 0x1400026dd      jz    0x1400026f1
│      ││   0x1400026df      and   rcx, 0xfffffffffffffff0             ; arg1
│      ││   0x1400026e3      movups xmm1, xmmword [rcx+rdx*1]          ; arg1
│      ││   0x1400026e7      movups xmmword [rax], xmm0
│      ││   0x1400026ea      movaps xmm0, xmm1
│      ││   0x1400026ed      add   rcx, 0x10                           ; 16 ; arg1
│      │└─> 0x1400026f1      add   r8, rax                             ; arg3
│      │    0x1400026f4      sub   r8, rcx                             ; arg3
│      │    0x1400026f7      mov   r9, r8                              ; arg3
│      │    0x1400026fa      shr   r9, 0x06
│      │┌─< 0x1400026fe      jz    0x14000276f
│      ││   0x140002700      cmp   r9, 0x1000
│     ┌───< 0x140002707      jnbe  0x1400027c0
│     │││   0x14000270d      and   r8, 0x3f                            ; 63 ; arg3
│    ┌────< 0x140002711      jmp   0x140002740
..
│    ││││   ; CODE XREF from fcn.140002640 @ 0x140002711
│   ┌└────> 0x140002740      movups xmm1, xmmword [rcx+rdx*1]          ; arg1
│   ╎ │││   0x140002744      movups xmm2, xmmword [rcx+rdx*1+0x10]     ; arg1
│   ╎ │││   0x140002749      movups xmm3, xmmword [rcx+rdx*1+0x20]     ; arg1
│   ╎ │││   0x14000274e      movups xmm4, xmmword [rcx+rdx*1+0x30]     ; arg1
│   ╎ │││   0x140002753      movaps xmmword [rcx-0x10], xmm0           ; arg1
│   ╎ │││   0x140002757      add   rcx, 0x40                           ; 64 ; arg1
│   ╎ │││   0x14000275b      dec   r9
│   ╎ │││   0x14000275e      movaps xmmword [rcx-0x40], xmm1           ; arg1
│   ╎ │││   0x140002762      movaps xmmword [rcx-0x30], xmm2           ; arg1
│   ╎ │││   0x140002766      movaps xmmword [rcx-0x20], xmm3           ; arg1
│   ╎ │││   0x14000276a      movaps xmm0, xmm4
│   └─────< 0x14000276d      jnz   0x140002740
│     │││   ; CODE XREF from fcn.140002640 @ 0x140002837
│    ┌──└─> 0x14000276f      mov   r9, r8                              ; arg3
│    ╎││    0x140002772      shr   r9, 0x04
│    ╎││┌─< 0x140002776      jz    0x140002791
│    ╎│││   0x140002778      nop   dword [rax+rax*1], eax
│   ┌─────> 0x140002780      movaps xmmword [rcx-0x10], xmm0           ; arg1
│   ╎╎│││   0x140002784      movups xmm0, xmmword [rcx+rdx*1]          ; arg1
│   ╎╎│││   0x140002788      add   rcx, 0x10                           ; 16 ; arg1
│   ╎╎│││   0x14000278c      dec   r9
│   └─────< 0x14000278f      jnz   0x140002780
│    ╎││└─> 0x140002791      and   r8, 0x0f                            ; 0xf ; 15 ; arg3
│    ╎││┌─< 0x140002795      jz    0x1400027a5
│    ╎│││   0x140002797      lea   r11, qword [rcx+r8*1-0x10]          ; arg1
│    ╎│││   0x14000279c      movups xmm1, xmmword [r11+rdx*1]
│    ╎│││   0x1400027a1      movups xmmword [r11], xmm1
│    ╎││└─> 0x1400027a5      movaps xmmword [rcx-0x10], xmm0           ; arg1
│    ╎││    0x1400027a9      ret
..
│    ╎└───> 0x1400027c0      mov   r9, r8                              ; arg3
│    ╎ │    0x1400027c3      shr   r9, 0x06
│    ╎ │    0x1400027c7      and   r8, 0x3f                            ; 63 ; arg3
│    ╎ │    0x1400027cb      prefetchnta byte [rcx+rdx*1+0x40]
│    ╎ │┌─< 0x1400027d0      jmp   0x140002800
..
│    ╎ ││   ; CODE XREF from fcn.140002640 @ 0x1400027d0
│    ╎┌─└─> 0x140002800      movups xmm1, xmmword [rcx+rdx*1]          ; arg1
│    ╎╎│    0x140002804      movups xmm2, xmmword [rcx+rdx*1+0x10]     ; arg1
│    ╎╎│    0x140002809      movups xmm3, xmmword [rcx+rdx*1+0x20]     ; arg1
│    ╎╎│    0x14000280e      movups xmm4, xmmword [rcx+rdx*1+0x30]     ; arg1
│    ╎╎│    0x140002813      movntps xmmword [rcx-0x10], xmm0          ; arg1
│    ╎╎│    0x140002817      add   rcx, 0x40                           ; 64 ; arg1
│    ╎╎│    0x14000281b      prefetchnta byte [rcx+rdx*1+0x40]
│    ╎╎│    0x140002820      dec   r9
│    ╎╎│    0x140002823      movntps xmmword [rcx-0x40], xmm1          ; arg1
│    ╎╎│    0x140002827      movntps xmmword [rcx-0x30], xmm2          ; arg1
│    ╎╎│    0x14000282b      movntps xmmword [rcx-0x20], xmm3          ; arg1
│    ╎╎│    0x14000282f      movaps xmm0, xmm4
│    ╎└───< 0x140002832      jnz   0x140002800
│    ╎ │    0x140002834      sfence
│    └────< 0x140002837      jmp   0x14000276f
..
│      └──> 0x140002840      add   rcx, r8                             ; arg3
│           0x140002843      movups xmm0, xmmword [rcx+rdx*1-0x10]     ; arg1
│           0x140002848      sub   rcx, 0x10                           ; 16 ; arg1
│           0x14000284c      sub   r8, 0x10                            ; 16 ; arg3
│           0x140002850      test  cl, 0x0f                            ; 0xf ; 15
│       ┌─< 0x140002853      jz    0x14000286d
│       │   0x140002855      mov   r11, rcx                            ; arg1
│       │   0x140002858      and   rcx, 0xfffffffffffffff0             ; arg1
│       │   0x14000285c      movups xmm1, xmmword [rcx+rdx*1]          ; arg1
│       │   0x140002860      movups xmmword [r11], xmm0
│       │   0x140002864      movaps xmm0, xmm1
│       │   0x140002867      mov   r8, rcx                             ; arg1
│       │   0x14000286a      sub   r8, rax
│       └─> 0x14000286d      mov   r9, r8                              ; arg3
│           0x140002870      shr   r9, 0x06
│       ┌─< 0x140002874      jz    0x1400028af
│       │   0x140002876      and   r8, 0x3f                            ; 63 ; arg3
│      ┌──< 0x14000287a      jmp   0x140002880
..
│      ││   ; CODE XREF from fcn.140002640 @ 0x14000287a
│     ┌└──> 0x140002880      movups xmm1, xmmword [rcx+rdx*1-0x10]     ; arg1
│     ╎ │   0x140002885      movups xmm2, xmmword [rcx+rdx*1-0x20]     ; arg1
│     ╎ │   0x14000288a      movups xmm3, xmmword [rcx+rdx*1-0x30]     ; arg1
│     ╎ │   0x14000288f      movups xmm4, xmmword [rcx+rdx*1-0x40]     ; arg1
│     ╎ │   0x140002894      movaps xmmword [rcx], xmm0                ; arg1
│     ╎ │   0x140002897      sub   rcx, 0x40                           ; 64 ; arg1
│     ╎ │   0x14000289b      dec   r9
│     ╎ │   0x14000289e      movaps xmmword [rcx+0x30], xmm1           ; arg1
│     ╎ │   0x1400028a2      movaps xmmword [rcx+0x20], xmm2           ; arg1
│     ╎ │   0x1400028a6      movaps xmmword [rcx+0x10], xmm3           ; arg1
│     ╎ │   0x1400028aa      movaps xmm0, xmm4
│     └───< 0x1400028ad      jnz   0x140002880
│       └─> 0x1400028af      mov   r9, r8                              ; arg3
│           0x1400028b2      shr   r9, 0x04
│       ┌─< 0x1400028b6      jz    0x1400028d1
│       │   0x1400028b8      nop   dword [rax+rax*1], eax
│      ┌──> 0x1400028c0      movaps xmmword [rcx], xmm0                ; arg1
│      ╎│   0x1400028c3      movups xmm0, xmmword [rcx+rdx*1-0x10]     ; arg1
│      ╎│   0x1400028c8      sub   rcx, 0x10                           ; 16 ; arg1
│      ╎│   0x1400028cc      dec   r9
│      └──< 0x1400028cf      jnz   0x1400028c0
│       └─> 0x1400028d1      and   r8, 0x0f                            ; 0xf ; 15 ; arg3
│       ┌─< 0x1400028d5      jz    0x1400028e6
│       │   0x1400028d7      mov   r11, rcx                            ; arg1
│       │   0x1400028da      sub   r11, r8                             ; arg3
│       │   0x1400028dd      movups xmm1, xmmword [r11+rdx*1]
│       │   0x1400028e2      movups xmmword [r11], xmm1
│       └─> 0x1400028e6      movaps xmmword [rcx], xmm0                ; arg1
└           0x1400028e9      ret
            ; CALL XREF from fcn.140001ee0 @ 0x140001f22
┌ fcn.140002900(int64_t arg1, int64_t arg3);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg3 @ r8
│           0x140002900      mov   rax, rcx                            ; arg1
│           0x140002903      movzx edx, dl
│           0x140002906      mov   r9, 0x101010101010101
│           0x140002910      imul  rdx, r9
│           0x140002914      movq  xmm0, rdx
│           0x140002919      movlhps xmm0, xmm0
│           0x14000291c      cmp   r8, 0x40                            ; '@' ; 64 ; arg3
│       ┌─< 0x140002920      jb    0x140002990
│       │   0x140002922      test  byte [0x140004080], 0x02            ; [0x140004080:1]=2
│      ┌──< 0x140002929      jz    0x140002938
│      ││   0x14000292b      cmp   r8, 0x320                           ; 800 ; arg3
│     ┌───< 0x140002932      jnb   0x140002a40
│     │└──> 0x140002938      movups xmmword [rcx], xmm0                ; arg1
│     │ │   0x14000293b      add   r8, rcx                             ; arg3
│     │ │   0x14000293e      add   rcx, 0x10                           ; 16 ; arg1
│     │ │   0x140002942      and   rcx, 0xfffffffffffffff0             ; arg1
│     │ │   0x140002946      sub   r8, rcx                             ; arg3
│     │ │   0x140002949      cmp   r8, 0x40                            ; '@' ; 64 ; arg3
│     │┌──< 0x14000294d      jb    0x140002996
│     │││   0x14000294f      lea   rdx, qword [rcx+r8*1-0x10]          ; arg1
│     │││   0x140002954      lea   r9, qword [rcx+r8*1-0x30]           ; arg1
│     │││   0x140002959      and   r9, 0xfffffffffffffff0
│     │││   0x14000295d      shr   r8, 0x06                            ; arg3
│    ┌────> 0x140002961      movaps xmmword [rcx], xmm0                ; arg1
│    ╎│││   0x140002964      movaps xmmword [rcx+0x10], xmm0           ; arg1
│    ╎│││   0x140002968      add   rcx, 0x40                           ; 64 ; arg1
│    ╎│││   0x14000296c      dec   r8                                  ; arg3
│    ╎│││   0x14000296f      movaps xmmword [rcx-0x20], xmm0           ; arg1
│    ╎│││   0x140002973      movaps xmmword [rcx-0x10], xmm0           ; arg1
│    └────< 0x140002977      jnz   0x140002961
│     │││   0x140002979      movaps xmmword [r9], xmm0
│     │││   0x14000297d      movaps xmmword [r9+0x10], xmm0
│     │││   0x140002982      movaps xmmword [r9+0x20], xmm0
│     │││   0x140002987      movups xmmword [rdx], xmm0
│     │││   0x14000298a      ret
..
│     ││└─> 0x140002990      cmp   r8, 0x10                            ; 16 ; arg3
│     ││┌─< 0x140002994      jb    0x1400029c0
│     │└──> 0x140002996      lea   r9, qword [r8+rcx*1-0x10]           ; arg3
│     │ │   0x14000299b      and   r8, 0x20                            ; 32 ; arg3
│     │ │   0x14000299f      movups xmmword [rcx], xmm0                ; arg1
│     │ │   0x1400029a2      shr   r8, 0x01                            ; arg3
│     │ │   0x1400029a5      movups xmmword [r9], xmm0
│     │ │   0x1400029a9      movups xmmword [rcx+r8*1], xmm0           ; arg1
│     │ │   0x1400029ae      neg   r8                                  ; arg3
│     │ │   0x1400029b1      movups xmmword [r9+r8*1], xmm0
│     │ │   0x1400029b6      ret
..
│     │ └─> 0x1400029c0      cmp   r8, 0x04                            ; 4 ; arg3
│     │ ┌─< 0x1400029c4      jb    0x1400029f0
│     │ │   0x1400029c6      lea   r9, qword [r8+rcx*1-0x04]           ; arg3
│     │ │   0x1400029cb      and   r8, 0x08                            ; arg3
│     │ │   0x1400029cf      mov   dword [rcx], edx                    ; arg1
│     │ │   0x1400029d1      shr   r8, 0x01                            ; arg3
│     │ │   0x1400029d4      mov   dword [r9], edx
│     │ │   0x1400029d7      mov   dword [rcx+r8*1], edx               ; arg1
│     │ │   0x1400029db      neg   r8                                  ; arg3
│     │ │   0x1400029de      mov   dword [r9+r8*1], edx
│     │ │   0x1400029e2      ret
..
│     │ └─> 0x1400029f0      test  r8, r8                              ; arg3
│     │ ┌─< 0x1400029f3      jz    0x140002a06
│     │ │   0x1400029f5      mov   byte [rcx], dl                      ; arg1
│     │ │   0x1400029f7      lea   r9, qword [rcx+r8*1-0x02]           ; arg1
│     │ │   0x1400029fc      cmp   r8, 0x01                            ; 1 ; arg3
│     │┌──< 0x140002a00      jz    0x140002a06
│     │││   0x140002a02      mov   word [r9], dx
│     │└└─> 0x140002a06      ret
..
│     └───> 0x140002a40      push  rdi
│           0x140002a41      test  byte [0x140004080], 0x01            ; [0x140004080:1]=2
│       ┌─< 0x140002a48      jz    0x140002a7c
│       │   ; CODE XREF from fcn.140002900 @ 0x140002a81
│      ┌──> 0x140002a4a      mov   rdi, rcx
│      ╎│   0x140002a4d      add   r8, rcx
│      ╎│   0x140002a50      movups xmmword [rcx], xmm0
│      ╎│   0x140002a53      add   rdi, 0x40                           ; 64
│      ╎│   0x140002a57      movups xmmword [rcx+0x10], xmm0
│      ╎│   0x140002a5b      and   rdi, 0xffffffffffffffc0
│      ╎│   0x140002a5f      movups xmmword [rcx+0x20], xmm0
│      ╎│   0x140002a63      sub   r8, rdi
│      ╎│   0x140002a66      movups xmmword [rcx+0x30], xmm0
│      ╎│   0x140002a6a      mov   rcx, r8
│      ╎│   0x140002a6d      mov   r9, rax
│      ╎│   0x140002a70      movq  rax, xmm0
│      ╎│   0x140002a75      rep   stosb
│      ╎│   0x140002a77      mov   rax, r9
│      ╎│   0x140002a7a      pop   rdi
│      ╎│   0x140002a7b      ret
│      ╎└─> 0x140002a7c      call  fcn.140002ac0
└      └──< 0x140002a81      jmp   0x140002a4a
            ; CALL XREF from fcn.140002900 @ 0x140002a7c
┌ fcn.140002ac0(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; arg int64_t arg4 @ r9
│           ; var int64_t var_38h @ stack - 0x38
│           0x140002ac0      push  r9                                  ; arg4
│           0x140002ac2      push  r8                                  ; arg3
│           0x140002ac4      push  rdx                                 ; arg2
│           0x140002ac5      push  rcx                                 ; arg1
│           0x140002ac6      push  rax
│           0x140002ac7      sub   rsp, 0x30
│           0x140002acb      movaps xmmword [var_38h], xmm0
│           0x140002ad0      call  fcn.140001ff0
│           0x140002ad5      movaps xmm0, xmmword [var_38h]
│           0x140002ada      add   rsp, 0x30
│           0x140002ade      pop   rax
│           0x140002adf      pop   rcx
│           0x140002ae0      pop   rdx
│           0x140002ae1      pop   r8
│           0x140002ae3      pop   r9
└           0x140002ae5      ret
            ;-- section.PAGE:
┌ fcn.140006000(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; arg int64_t arg4 @ r9
│           ; var int64_t var_118h @ stack - 0x118
│           ; var int64_t var_110h @ stack - 0x110
│           ; var int64_t var_108h @ stack - 0x108
│           ; var int64_t var_100h @ stack - 0x100
│           ; var int64_t var_f8h @ stack - 0xf8
│           ; var int64_t var_e8h @ stack - 0xe8
│           ; var int64_t var_e0h @ stack - 0xe0
│           ; var int64_t var_d8h @ stack - 0xd8
│           ; var int64_t var_d0h @ stack - 0xd0
│           ; var int64_t var_c8h @ stack - 0xc8
│           ; var int64_t var_c0h @ stack - 0xc0
│           ; var int64_t var_bch @ stack - 0xbc
│           ; var int64_t var_b8h @ stack - 0xb8
│           ; var int64_t var_b0h @ stack - 0xb0
│           ; var int64_t var_a8h @ stack - 0xa8
│           ; var int64_t var_a0h @ stack - 0xa0
│           ; var int64_t var_90h @ stack - 0x90
│           ; var int64_t var_88h @ stack - 0x88
│           ; var int64_t var_84h @ stack - 0x84
│           ; var int64_t var_80h @ stack - 0x80
│           ; var int64_t var_70h @ stack - 0x70
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_64h @ stack - 0x64
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_58h @ stack - 0x58
│           0x140006000      push  rbp                                 ; [04] -r-x section size 8192 named PAGE
│           0x140006002      push  rbx
│           0x140006003      push  rsi
│           0x140006004      push  rdi
│           0x140006005      push  r12
│           0x140006007      push  r13
│           0x140006009      push  r14
│           0x14000600b      push  r15
│           0x14000600d      lea   rbp, qword [var_60h + 0x1]
│           0x140006012      sub   rsp, 0xf8
│           0x140006019      mov   rax, qword [0x140004040]            ; [0x140004040:8]=0x2b992ddfa232
│           0x140006020      xor   rax, rsp
│           0x140006023      mov   qword [var_58h], rax
│           0x140006027      mov   r15, r9                             ; arg4
│           0x14000602a      mov   qword [var_d8h], r8                 ; arg3
│           0x14000602e      mov   rsi, rdx                            ; arg2
│           0x140006031      mov   rbx, rcx                            ; arg1
│           0x140006034      lea   rax, qword [0x140004030]            ; "0@"
│           0x14000603b      xor   edi, edi
│           0x14000603d      cmp   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
│           0x140006044      lea   rdx, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│       ┌─< 0x14000604b      jz    0x140006073
│       │   0x14000604d      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x140006054      cmp   word [rcx+0x48], di
│      ┌──< 0x140006058      jz    0x140006073
│      ││   0x14000605a      mov   rcx, qword [rcx+0x40]
│      ││   0x14000605e      lea   r8d, qword [rdi+0x05]
│      ││   0x140006062      mov   qword [var_118h], rdx
│      ││   0x140006067      lea   r9d, qword [rdi+0x1e]
│      ││   0x14000606b      mov   dl, r8b
│      ││   0x14000606e      call  fcn.140001374
│      └└─> 0x140006073      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x14000607a      mov   rdx, rbx
│           0x14000607d      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006084      mov   rax, qword [rax+0x4e8]
│           0x14000608b      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006091      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006098      mov   r14, rax
│           0x14000609b      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
│           0x1400060a2      mov   rdx, r14
│           0x1400060a5      mov   rax, qword [rcx+0x650]
│           0x1400060ac      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x1400060b3      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x1400060b9      movzx eax, word [rsi+0x1c]
│           0x1400060bd      mov   ecx, 0x04
│           0x1400060c2      mov   qword [var_e0h], rdi
│           0x1400060c7      mov   rbx, rdi
│           0x1400060ca      cmp   cx, ax
│       ┌─< 0x1400060cd      jbe   0x1400060d1
│       │   0x1400060cf      mov   eax, ecx
│       └─> 0x1400060d1      lea   r13, qword [rax+0x28]
│           0x1400060d5      xorps xmm0, xmm0
│           0x1400060d8      xor   eax, eax
│           0x1400060da      lea   rcx, qword [var_e8h]
│           0x1400060df      mov   qword [var_108h], rcx
│           0x1400060e4      lea   r12, qword [r13+0x10]
│           0x1400060e8      mov   qword [var_70h], rax
│           0x1400060ec      lea   rcx, qword [var_e0h]
│           0x1400060f1      movups xmmword [var_90h], xmm0
│           0x1400060f5      mov   eax, 0x01
│           0x1400060fa      mov   qword [var_110h], rcx
│           0x1400060ff      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006106      lea   rdx, qword [var_a0h]
│           0x14000610a      mov   dword [var_88h], eax
│           0x14000610d      xor   r9d, r9d
│           0x140006110      mov   dword [var_84h], eax
│           0x140006113      mov   r8d, 0x200                          ; 512
│           0x140006119      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006120      movups xmmword [var_a0h], xmm0
│           0x140006124      mov   dword [var_a0h], 0x38               ; '8' ; 56
│           0x14000612b      movups xmmword [var_80h], xmm0
│           0x14000612f      mov   qword [var_80h], r14
│           0x140006133      mov   rax, qword [rax+0x600]
│           0x14000613a      mov   qword [var_118h], r12
│           0x14000613f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006145      mov   edi, eax
│           0x140006147      test  eax, eax
│       ┌─< 0x140006149      jns   0x14000619e
│       │   0x14000614b      lea   rsi, qword [0x140004030]            ; "0@"
│       │   0x140006152      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
│       │   0x140006159      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│      ┌──< 0x140006160      jz    0x140006196
│      ││   0x140006162      lfence
│      ││   0x140006165      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x14000616c      mov   r9d, 0x1f                           ; 31
│      ││   0x140006172      mov   dword [var_100h], eax
│      ││   0x140006176      mov   qword [var_108h], r12
│      ││   0x14000617b      mov   qword [var_110h], r14
│      ││   0x140006180      mov   rcx, qword [rcx+0x40]
│      ││   0x140006184      lea   edx, qword [r9-0x1d]
│      ││   0x140006188      lea   r8d, qword [r9-0x1a]
│      ││   0x14000618c      mov   qword [var_118h], r15
│      ││   0x140006191      call  fcn.140001b08
│      └──> 0x140006196      xor   r13d, r13d
│      ┌──< 0x140006199      jmp   0x1400064c0
│      │└─> 0x14000619e      mov   rcx, qword [var_e8h]
│      │    0x1400061a3      mov   r8, r12
│      │    0x1400061a6      xor   edx, edx
│      │    0x1400061a8      call  fcn.140002900
│      │    0x1400061ad      mov   rax, qword [var_e8h]
│      │    0x1400061b2      mov   edi, 0x04
│      │    0x1400061b7      mov   dword [rax], 0x43696541             ; 'AeiC'
│      │                                                               ; [0x43696541:4]=-1
│      │    0x1400061bd      mov   rax, qword [var_e8h]
│      │    0x1400061c2      mov   dword [rax+0x08], r13d
│      │    0x1400061c6      mov   rax, qword [var_e8h]
│      │    0x1400061cb      mov   dword [rax+0x0c], edi
│      │    0x1400061ce      mov   rax, qword [var_e8h]
│      │    0x1400061d3      mov   ecx, dword [rsi+0x14]
│      │    0x1400061d6      mov   dword [rax+0x04], ecx
│      │    0x1400061d9      lea   rax, qword [0x140004030]            ; "0@"
│      │    0x1400061e0      cmp   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
│      │┌─< 0x1400061e7      jz    0x140006223
│      ││   0x1400061e9      mov   eax, dword [rsi+0x18]
│      ││   0x1400061ec      lea   r9d, qword [rdi+0x1c]
│      ││   0x1400061f0      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x1400061f7      lea   r8d, qword [rdi+0x01]
│      ││   0x1400061fb      mov   dword [var_100h], eax
│      ││   0x1400061ff      mov   dl, dil
│      ││   0x140006202      mov   eax, dword [rsi+0x10]
│      ││   0x140006205      mov   dword [var_108h], eax
│      ││   0x140006209      lea   rax, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│      ││   0x140006210      mov   rcx, qword [rcx+0x40]
│      ││   0x140006214      mov   qword [var_110h], r14
│      ││   0x140006219      mov   qword [var_118h], rax
│      ││   0x14000621e      call  fcn.140001740
│      │└─> 0x140006223      mov   rbx, qword [var_e8h]
│      │    0x140006228      mov   r12d, 0x02
│      │    0x14000622e      mov   r8, rsi
│      │    0x140006231      lea   eax, qword [r12+0x0e]
│      │    0x140006236      mov   dword [rbx+0x10], 0x100002          ; [0x100002:4]=-1
│      │    0x14000623d      mov   r9d, eax
│      │    0x140006240      lea   rcx, qword [rbx+0x14]
│      │    0x140006244      mov   edx, eax
│      │    0x140006246      call  fcn.140001ee0
│      │    0x14000624b      movzx eax, word [rbx+0x12]
│      │    0x14000624f      mov   rcx, rdi
│      │    0x140006252      cmp   di, ax
│      │┌─< 0x140006255      jnbe  0x140006259
│      ││   0x140006257      mov   ecx, eax
│      │└─> 0x140006259      mov   dword [rbx+rcx*1+0x14], 0x40000     ; [0x40000:4]=-1
│      │    0x140006261      xor   r13d, r13d
│      │    0x140006264      mov   eax, dword [rsi+0x10]
│      │    0x140006267      mov   dword [rbx+rcx*1+0x18], eax
│      │    0x14000626b      mov   dword [rbx+rcx*1+0x1c], 0x40000     ; [0x40000:4]=-1
│      │    0x140006273      mov   eax, dword [rsi+0x18]
│      │    0x140006276      mov   dword [rbx+rcx*1+0x20], eax
│      │    0x14000627a      mov   word [rbx+rcx*1+0x24], di
│      │    0x14000627f      movzx eax, word [rsi+0x1c]
│      │    0x140006283      mov   word [rbx+rcx*1+0x26], ax
│      │    0x140006288      test  ax, ax
│      │┌─< 0x14000628b      jz    0x1400062a2
│      ││   0x14000628d      add   rcx, 0x28                           ; 40
│      ││   0x140006291      lea   r8, qword [rsi+0x1e]
│      ││   0x140006295      add   rcx, rbx
│      ││   0x140006298      mov   edx, eax
│      ││   0x14000629a      mov   r9d, eax
│      ││   0x14000629d      call  fcn.140001ee0
│      │└─> 0x1400062a2      cmp   r15, rdi
│      │    0x1400062a5      mov   r8d, 0x636c654f                     ; 'Oelc'
│      │    0x1400062ab      mov   ecx, 0x600                          ; 1536
│      │    0x1400062b0      cmovb r15, rdi
│      │    0x1400062b4      add   r15, 0x10                           ; 16
│      │    0x1400062b8      mov   rdx, r15
│      │    0x1400062bb      call  qword [sym.imp.ntoskrnl.exe_ExAllocatePoolWithTag] ; [0x140003098:8]=0x8326 ; "&\x83"
│      │    0x1400062c1      mov   rbx, rax
│      │    0x1400062c4      test  rax, rax
│      │┌─< 0x1400062c7      jnz   0x140006318
│      ││   0x1400062c9      mov   edi, 0xc000009a
│      ││   0x1400062ce      lea   rsi, qword [0x140004030]            ; "0@"
│      ││   0x1400062d5      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
│     ┌───< 0x1400062dc      jz    0x1400064b9
│     │││   0x1400062e2      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│     │││   0x1400062e9      lea   r9d, qword [rax+0x21]
│     │││   0x1400062ed      mov   qword [var_108h], r15
│     │││   0x1400062f2      lea   r8d, qword [rax+0x05]
│     │││   0x1400062f6      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│     │││   0x1400062fd      mov   qword [var_110h], r14
│     │││   0x140006302      mov   dl, r12b
│     │││   0x140006305      mov   qword [var_118h], r15
│     │││   0x14000630a      mov   rcx, qword [rcx+0x40]
│     │││   0x14000630e      call  fcn.1400019f0
│    ┌────< 0x140006313      jmp   0x1400064c0
│    │││└─> 0x140006318      mov   r8, r15
│    │││    0x14000631b      xor   edx, edx
│    │││    0x14000631d      mov   rcx, rbx
│    │││    0x140006320      call  fcn.140002900
│    │││    0x140006325      mov   rax, qword [var_e0h]
│    │││    0x14000632a      mov   ecx, 0x03
│    │││    0x14000632f      mov   qword [var_b0h], rax
│    │││    0x140006333      mov   rdx, r14
│    │││    0x140006336      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│    │││    0x14000633d      mov   dword [var_64h], ecx
│    │││    0x140006340      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│    │││    0x140006347      mov   qword [var_b8h], 0x03
│    │││    0x14000634f      mov   qword [var_a8h], r13
│    │││    0x140006353      mov   qword [var_d0h], 0x01
│    │││    0x14000635b      mov   dword [var_bch], r13d
│    │││    0x14000635f      mov   qword [var_c8h], rbx
│    │││    0x140006363      mov   dword [var_c0h], r15d
│    │││    0x140006367      mov   dword [var_68h], 0x10               ; 16
│    │││    0x14000636e      mov   qword [var_60h], 0xfffffffffe363c80
│    │││    0x140006376      mov   rax, qword [rax+0x150]
│    │││    0x14000637d      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│    │││    0x140006383      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│    │││    0x14000638a      mov   r9d, 0x32c004
│    │││    0x140006390      mov   qword [var_100h], r13
│    │││    0x140006395      mov   rdx, rax
│    │││    0x140006398      xor   r8d, r8d
│    │││    0x14000639b      mov   r10, qword [rcx+0x5e0]
│    │││    0x1400063a2      lea   rcx, qword [var_68h]
│    │││    0x1400063a6      mov   qword [var_108h], rcx
│    │││    0x1400063ab      mov   rax, r10
│    │││    0x1400063ae      lea   rcx, qword [var_d0h]
│    │││    0x1400063b2      mov   qword [var_110h], rcx
│    │││    0x1400063b7      lea   rcx, qword [var_b8h]
│    │││    0x1400063bb      mov   qword [var_118h], rcx
│    │││    0x1400063c0      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│    │││    0x1400063c7      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│    │││    0x1400063cd      mov   edi, eax
│    │││    0x1400063cf      test  eax, eax
│    │││┌─< 0x1400063d1      jns   0x140006421
│    ││││   0x1400063d3      lea   rsi, qword [0x140004030]            ; "0@"
│    ││││   0x1400063da      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
│    ││││   0x1400063e1      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│   ┌─────< 0x1400063e8      jz    0x1400064c0
│   │││││   0x1400063ee      lfence
│   │││││   0x1400063f1      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│   │││││   0x1400063f8      mov   r9d, 0x22                           ; '"' ; 34
│   │││││   0x1400063fe      mov   dword [var_108h], eax
│   │││││   0x140006402      mov   dl, r12b
│   │││││   0x140006405      mov   qword [var_110h], r14
│   │││││   0x14000640a      mov   qword [var_118h], r15
│   │││││   0x14000640f      mov   rcx, qword [rcx+0x40]
│   │││││   0x140006413      lea   r8d, qword [r9-0x1d]
│   │││││   0x140006417      call  fcn.14000152c
│  ┌──────< 0x14000641c      jmp   0x1400064c0
│  │││││└─> 0x140006421      lea   rsi, qword [0x140004030]            ; "0@"
│  │││││    0x140006428      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
│  │││││    0x14000642f      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│  │││││┌─< 0x140006436      jz    0x140006477
│  ││││││   0x140006438      lfence
│  ││││││   0x14000643b      mov   eax, dword [rbx+0x08]
│  ││││││   0x14000643e      mov   r9d, 0x23                           ; '#' ; 35
│  ││││││   0x140006444      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│  ││││││   0x14000644b      mov   dword [var_f8h], eax
│  ││││││   0x14000644f      mov   eax, dword [rbx+0x04]
│  ││││││   0x140006452      mov   dword [var_100h], eax
│  ││││││   0x140006456      lea   edx, qword [r9-0x1f]
│  ││││││   0x14000645a      mov   eax, dword [rbx]
│  ││││││   0x14000645c      lea   r8d, qword [r9-0x1e]
│  ││││││   0x140006460      mov   rcx, qword [rcx+0x40]
│  ││││││   0x140006464      mov   dword [var_108h], eax
│  ││││││   0x140006468      mov   qword [var_110h], r14
│  ││││││   0x14000646d      mov   qword [var_118h], r15
│  ││││││   0x140006472      call  fcn.140001884
│  │││││└─> 0x140006477      cmp   dword [rbx], 0x426f6541             ; 'AeoB'
│  │││││┌─< 0x14000647d      jz    0x1400064c0
│  ││││││   0x14000647f      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
│ ┌───────< 0x140006486      jz    0x1400064b2
│ │││││││   0x140006488      lfence
│ │││││││   0x14000648b      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│ │││││││   0x140006492      mov   r9d, 0x24                           ; '$' ; 36
│ │││││││   0x140006498      mov   qword [var_110h], r14
│ │││││││   0x14000649d      mov   dl, r12b
│ │││││││   0x1400064a0      mov   qword [var_118h], r15
│ │││││││   0x1400064a5      mov   rcx, qword [rcx+0x40]
│ │││││││   0x1400064a9      lea   r8d, qword [r9-0x1f]
│ │││││││   0x1400064ad      call  fcn.14000164c
│ └───────> 0x1400064b2      mov   edi, 0xc014000f
│ ┌───────< 0x1400064b7      jmp   0x1400064c0
│ ││││└───> 0x1400064b9      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│ ││││ ││   ; CODE XREFS from fcn.140006000 @ 0x140006199, 0x140006313, 0x14000641c, 0x1400064b7
│ └└└└─└└─> 0x1400064c0      mov   rdx, qword [var_e0h]
│           0x1400064c5      test  rdx, rdx
│       ┌─< 0x1400064c8      jz    0x1400064e5
│       │   0x1400064ca      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│       │   0x1400064d1      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│       │   0x1400064d8      mov   rax, qword [rax+0x680]
│       │   0x1400064df      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│       └─> 0x1400064e5      test  edi, edi
│       ┌─< 0x1400064e7      js    0x1400064f7
│       │   0x1400064e9      mov   rax, qword [var_d8h]
│       │   0x1400064ed      test  rax, rax
│      ┌──< 0x1400064f0      jz    0x1400064f7
│      ││   0x1400064f2      mov   qword [rax], rbx
│     ┌───< 0x1400064f5      jmp   0x14000650a
│     │└└─> 0x1400064f7      test  rbx, rbx
│     │ ┌─< 0x1400064fa      jz    0x14000650a
│     │ │   0x1400064fc      mov   edx, 0x636c654f                     ; 'Oelc'
│     │ │   0x140006501      mov   rcx, rbx
│     │ │   0x140006504      call  qword [sym.imp.ntoskrnl.exe_ExFreePoolWithTag] ; [0x140003090:8]=0x833e ; ">\x83"
│     │ │   ; CODE XREF from fcn.140006000 @ 0x1400064f5
│     └─└─> 0x14000650a      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
│       ┌─< 0x140006511      jz    0x14000653c
│       │   0x140006513      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x14000651a      cmp   word [rcx+0x48], r13w
│      ┌──< 0x14000651f      jz    0x14000653c
│      ││   0x140006521      mov   rcx, qword [rcx+0x40]
│      ││   0x140006525      mov   r9d, 0x25                           ; '%' ; 37
│      ││   0x14000652b      mov   qword [var_118h], r15
│      ││   0x140006530      lea   r8d, qword [r9-0x20]
│      ││   0x140006534      mov   dl, r8b
│      ││   0x140006537      call  fcn.140001374
│      └└─> 0x14000653c      mov   eax, edi
│           0x14000653e      mov   rcx, qword [var_58h]
│           0x140006542      xor   rcx, rsp
│           0x140006545      call  fcn.140001ea0
│           0x14000654a      add   rsp, 0xf8
│           0x140006551      pop   r15
│           0x140006553      pop   r14
│           0x140006555      pop   r13
│           0x140006557      pop   r12
│           0x140006559      pop   rdi
│           0x14000655a      pop   rsi
│           0x14000655b      pop   rbx
│           0x14000655c      pop   rbp
└           0x14000655d      ret
┌ fcn.140006560(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_20h @ stack + 0x20
│           0x140006560      mov   qword [var_8h], rbx
│           0x140006565      mov   qword [var_10h], rsi
│           0x14000656a      push  rbp
│           0x14000656b      push  rdi
│           0x14000656c      push  r12
│           0x14000656e      push  r13
│           0x140006570      push  r14
│           0x140006572      mov   rbp, rsp
│           0x140006575      sub   rsp, 0x60
│           0x140006579      xor   r14d, r14d
│           0x14000657c      mov   rsi, r8                             ; arg3
│           0x14000657f      mov   qword [var_48h], r14
│           0x140006583      mov   rdi, rdx                            ; arg2
│           0x140006586      mov   qword [var_20h], r14
│           0x14000658a      mov   rbx, rcx                            ; arg1
│           0x14000658d      lea   r12, qword [0x140004030]            ; "0@"
│           0x140006594      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
│           0x14000659b      lea   r13, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│       ┌─< 0x1400065a2      jz    0x1400065cb
│       │   0x1400065a4      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x1400065ab      cmp   word [rcx+0x48], r14w
│      ┌──< 0x1400065b0      jz    0x1400065cb
│      ││   0x1400065b2      mov   rcx, qword [rcx+0x40]
│      ││   0x1400065b6      lea   r8d, qword [r14+0x05]
│      ││   0x1400065ba      mov   dl, r8b
│      ││   0x1400065bd      mov   qword [var_68h], r13
│      ││   0x1400065c2      lea   r9d, qword [r14+0x12]
│      ││   0x1400065c6      call  fcn.140001374
│      └└─> 0x1400065cb      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x1400065d2      lea   rcx, qword [var_20h]
│           0x1400065d6      mov   qword [var_68h], rcx
│           0x1400065db      lea   r9, qword [var_38h]
│           0x1400065df      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x1400065e6      mov   r8d, 0x14                           ; 20
│           0x1400065ec      mov   rdx, rdi
│           0x1400065ef      mov   rax, qword [rax+0x870]
│           0x1400065f6      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x1400065fc      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006603      lea   r9, qword [var_40h]
│           0x140006607      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x14000660e      mov   r8d, 0x420                          ; 1056
│           0x140006614      mov   rdx, rdi
│           0x140006617      mov   qword [var_68h], r14
│           0x14000661c      mov   rax, qword [rax+0x868]
│           0x140006623      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006629      mov   edi, eax
│           0x14000662b      test  eax, eax
│       ┌─< 0x14000662d      js    0x1400066bf
│       │   0x140006633      mov   r9, qword [var_20h]
│       │   0x140006637      lea   r8, qword [var_48h]
│       │   0x14000663b      mov   rdx, qword [var_40h]
│       │   0x14000663f      mov   rcx, rbx
│       │   0x140006642      call  fcn.140006000
│       │   0x140006647      mov   edi, eax
│       │   0x140006649      test  eax, eax
│      ┌──< 0x14000664b      js    0x1400066bf
│      ││   0x14000664d      mov   rbx, qword [var_48h]
│      ││   0x140006651      mov   rcx, qword [var_20h]
│      ││   0x140006655      mov   eax, dword [rbx+0x04]
│      ││   0x140006658      mov   qword [rsi], rax
│      ││   0x14000665b      mov   r8d, dword [rbx+0x04]
│      ││   0x14000665f      cmp   rcx, r8
│     ┌───< 0x140006662      jb    0x140006676
│     │││   0x140006664      mov   rcx, qword [var_38h]
│     │││   0x140006668      mov   rdx, rbx
│     │││   0x14000666b      call  fcn.140002640
│     │││   0x140006670      mov   rcx, qword [var_20h]
│    ┌────< 0x140006674      jmp   0x14000667b
│    │└───> 0x140006676      mov   edi, 0xc000009a
│    │ ││   ; CODE XREF from fcn.140006560 @ 0x140006674
│    └────> 0x14000667b      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
│     ┌───< 0x140006682      jz    0x1400066b1
│     │││   0x140006684      mov   eax, dword [rbx+0x04]
│     │││   0x140006687      mov   r9d, 0x13                           ; 19
│     │││   0x14000668d      mov   dword [var_58h], eax
│     │││   0x140006691      mov   dl, 0x04
│     │││   0x140006693      mov   qword [var_60h], rcx
│     │││   0x140006698      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│     │││   0x14000669f      lea   r8d, qword [r9-0x0e]
│     │││   0x1400066a3      mov   qword [var_68h], r13
│     │││   0x1400066a8      mov   rcx, qword [rcx+0x40]
│     │││   0x1400066ac      call  fcn.14000152c
│     └───> 0x1400066b1      mov   edx, 0x636c654f                     ; 'Oelc'
│      ││   0x1400066b6      mov   rcx, rbx
│      ││   0x1400066b9      call  qword [sym.imp.ntoskrnl.exe_ExFreePoolWithTag] ; [0x140003090:8]=0x833e ; ">\x83"
│      └└─> 0x1400066bf      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
│       ┌─< 0x1400066c6      jz    0x1400066f1
│       │   0x1400066c8      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x1400066cf      cmp   word [rcx+0x48], r14w
│      ┌──< 0x1400066d4      jz    0x1400066f1
│      ││   0x1400066d6      mov   rcx, qword [rcx+0x40]
│      ││   0x1400066da      mov   r9d, 0x14                           ; 20
│      ││   0x1400066e0      mov   qword [var_68h], r13
│      ││   0x1400066e5      lea   r8d, qword [r9-0x0f]
│      ││   0x1400066e9      mov   dl, r8b
│      ││   0x1400066ec      call  fcn.140001374
│      └└─> 0x1400066f1      lea   r11, qword [var_28h]
│           0x1400066f6      mov   eax, edi
│           0x1400066f8      mov   rbx, qword [r11+0x30]
│           0x1400066fc      mov   rsi, qword [r11+0x38]
│           0x140006700      mov   rsp, r11
│           0x140006703      pop   r14
│           0x140006705      pop   r13
│           0x140006707      pop   r12
│           0x140006709      pop   rdi
│           0x14000670a      pop   rbp
└           0x14000670b      ret
┌ fcn.14000670c(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; var int64_t var_20h @ stack + 0x20
│           0x14000670c      mov   rax, rsp
│           0x14000670f      mov   qword [rax+0x08], rbx
│           0x140006713      mov   qword [rax+0x10], rbp
│           0x140006717      mov   qword [rax+0x18], rsi
│           0x14000671b      push  rdi
│           0x14000671c      push  r12
│           0x14000671e      push  r15
│           0x140006720      sub   rsp, 0x30
│           0x140006724      mov   rdi, r8                             ; arg3
│           0x140006727      mov   rbx, rdx                            ; arg2
│           0x14000672a      mov   rsi, rcx                            ; arg1
│           0x14000672d      lea   rbp, qword [0x140004030]            ; "0@"
│           0x140006734      xor   r12d, r12d
│           0x140006737      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
│           0x14000673e      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│       ┌─< 0x140006745      jz    0x14000676e
│       │   0x140006747      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x14000674e      cmp   word [rcx+0x48], r12w
│      ┌──< 0x140006753      jz    0x14000676e
│      ││   0x140006755      mov   rcx, qword [rcx+0x40]
│      ││   0x140006759      lea   r9d, qword [r12+0x18]
│      ││   0x14000675e      lea   r8d, qword [r12+0x06]
│      ││   0x140006763      mov   qword [rax-0x28], r15
│      ││   0x140006767      mov   dl, 0x05
│      ││   0x140006769      call  fcn.140001374
│      └└─> 0x14000676e      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006775      mov   rdx, rsi
│           0x140006778      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x14000677f      mov   rax, qword [rax+0x4e8]
│           0x140006786      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x14000678c      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006793      mov   rdx, rax
│           0x140006796      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
│           0x14000679d      mov   rax, qword [rcx+0x650]
│           0x1400067a4      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x1400067ab      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x1400067b1      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x1400067b8      lea   r9, qword [var_20h]
│           0x1400067bd      mov   rsi, rax
│           0x1400067c0      mov   qword [var_28h], r12
│           0x1400067c5      mov   r8d, 0x04
│           0x1400067cb      mov   rdx, rbx
│           0x1400067ce      mov   rax, qword [rcx+0x870]
│           0x1400067d5      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x1400067dc      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x1400067e2      mov   ebx, eax
│           0x1400067e4      test  eax, eax
│       ┌─< 0x1400067e6      jns   0x14000681b
│       │   0x1400067e8      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
│      ┌──< 0x1400067ef      jz    0x140006860
│      ││   0x1400067f1      lfence
│      ││   0x1400067f4      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x1400067fb      mov   r9d, 0x19                           ; 25
│      ││   0x140006801      mov   dword [var_28h + 0x8], eax
│      ││   0x140006805      mov   dl, 0x03
│      ││   0x140006807      mov   qword [var_28h], r15
│      ││   0x14000680c      mov   rcx, qword [rcx+0x40]
│      ││   0x140006810      lea   r8d, qword [r9-0x13]
│      ││   0x140006814      call  fcn.140001438
│     ┌───< 0x140006819      jmp   0x14000682f
│     ││└─> 0x14000681b      mov   ecx, dword [rsi+0x1078]
│     ││    0x140006821      mov   rax, qword [var_20h]
│     ││    0x140006826      mov   dword [rax], ecx
│     ││    0x140006828      mov   qword [rdi], 0x04
│     ││    ; CODE XREF from fcn.14000670c @ 0x140006819
│     └───> 0x14000682f      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
│      │┌─< 0x140006836      jz    0x140006860
│      ││   0x140006838      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x14000683f      cmp   word [rcx+0x48], r12w
│     ┌───< 0x140006844      jz    0x140006860
│     │││   0x140006846      mov   rcx, qword [rcx+0x40]
│     │││   0x14000684a      mov   r9d, 0x1a                           ; 26
│     │││   0x140006850      mov   dl, 0x05
│     │││   0x140006852      mov   qword [var_28h], r15
│     │││   0x140006857      lea   r8d, qword [r9-0x14]
│     │││   0x14000685b      call  fcn.140001374
│     └└└─> 0x140006860      mov   rbp, qword [var_10h]
│           0x140006865      mov   eax, ebx
│           0x140006867      mov   rbx, qword [var_8h]
│           0x14000686c      mov   rsi, qword [var_18h]
│           0x140006871      add   rsp, 0x30
│           0x140006875      pop   r15
│           0x140006877      pop   r12
│           0x140006879      pop   rdi
└           0x14000687a      ret
┌ fcn.14000687c(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_43h @ stack - 0x43
│           ; var int64_t var_33h @ stack - 0x33
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; var int64_t var_20h @ stack + 0x20
│           0x14000687c      mov   rax, rsp
│           0x14000687f      mov   qword [rax+0x08], rbx
│           0x140006883      mov   qword [rax+0x10], rbp
│           0x140006887      mov   qword [rax+0x20], rsi
│           0x14000688b      push  rdi
│           0x14000688c      push  r12
│           0x14000688e      push  r15
│           0x140006890      sub   rsp, 0x30
│           0x140006894      mov   rsi, rdx                            ; arg2
│           0x140006897      mov   rbx, rcx                            ; arg1
│           0x14000689a      lea   r15, qword [0x140004030]            ; "0@"
│           0x1400068a1      xor   ebp, ebp
│           0x1400068a3      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
│           0x1400068aa      lea   r12, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│       ┌─< 0x1400068b1      jz    0x1400068d8
│       │   0x1400068b3      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x1400068ba      cmp   word [rcx+0x48], bp
│      ┌──< 0x1400068be      jz    0x1400068d8
│      ││   0x1400068c0      mov   rcx, qword [rcx+0x40]
│      ││   0x1400068c4      lea   r8d, qword [var_43h]
│      ││   0x1400068c8      mov   dl, r8b
│      ││   0x1400068cb      mov   qword [rax-0x28], r12
│      ││   0x1400068cf      lea   r9d, qword [var_33h]
│      ││   0x1400068d3      call  fcn.140001374
│      └└─> 0x1400068d8      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x1400068df      mov   rdx, rbx
│           0x1400068e2      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x1400068e9      mov   rax, qword [rax+0x4e8]
│           0x1400068f0      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x1400068f6      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x1400068fd      mov   rdx, rax
│           0x140006900      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
│           0x140006907      mov   rax, qword [rcx+0x650]
│           0x14000690e      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006915      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x14000691b      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006922      lea   r9, qword [var_18h]
│           0x140006927      mov   rbx, rax
│           0x14000692a      mov   qword [var_28h], rbp
│           0x14000692f      mov   r8d, 0x08
│           0x140006935      mov   rdx, rsi
│           0x140006938      mov   rax, qword [rcx+0x868]
│           0x14000693f      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006946      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x14000694c      mov   edi, eax
│           0x14000694e      test  eax, eax
│       ┌─< 0x140006950      js    0x1400069cc
│       │   0x140006952      lfence
│       │   0x140006955      lea   rdi, qword [rbx+0x1080]
│       │   0x14000695c      cmp   byte [rbx+0x107c], bpl
│      ┌──< 0x140006963      jz    0x140006975
│      ││   0x140006965      mov   rcx, qword [rdi]
│      ││   0x140006968      mov   byte [rbx+0x107c], bpl
│      ││   0x14000696f      call  qword [sym.imp.ntoskrnl.exe_ObfDereferenceObject] ; [0x140003060:8]=0x836e ; "n\x83"
│      └──> 0x140006975      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│       │   0x14000697c      mov   rdx, rsi
│       │   0x14000697f      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│       │   0x140006986      mov   rax, qword [rax+0x8c0]
│       │   0x14000698d      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│       │   0x140006993      mov   r8, qword [sym.imp.ntoskrnl.exe_ExEventObjectType] ; [0x140003058:8]=0x8386
│       │   0x14000699a      mov   edx, 0x100002
│       │   0x14000699f      mov   rcx, qword [var_18h]
│       │   0x1400069a4      mov   r9b, al
│       │   0x1400069a7      mov   qword [var_28h + 0x8], rbp
│       │   0x1400069ac      mov   qword [var_28h], rdi
│       │   0x1400069b1      mov   r8, qword [r8]
│       │   0x1400069b4      mov   rcx, qword [rcx]
│       │   0x1400069b7      call  qword [sym.imp.ntoskrnl.exe_ObReferenceObjectByHandle] ; [0x140003088:8]=0x8352 ; "R\x83"
│       │   0x1400069bd      mov   edi, eax
│       │   0x1400069bf      test  eax, eax
│      ┌──< 0x1400069c1      js    0x1400069cc
│      ││   0x1400069c3      mov   byte [rbx+0x107c], 0x01
│     ┌───< 0x1400069ca      jmp   0x1400069fd
│     │└└─> 0x1400069cc      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
│     │ ┌─< 0x1400069d3      jz    0x140006a2e
│     │ │   0x1400069d5      lfence
│     │ │   0x1400069d8      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│     │ │   0x1400069df      mov   r9d, 0x16                           ; 22
│     │ │   0x1400069e5      mov   dword [var_28h + 0x8], edi
│     │ │   0x1400069e9      mov   dl, 0x03
│     │ │   0x1400069eb      mov   qword [var_28h], r12
│     │ │   0x1400069f0      mov   rcx, qword [rcx+0x40]
│     │ │   0x1400069f4      lea   r8d, qword [r9-0x11]
│     │ │   0x1400069f8      call  fcn.140001438
│     │ │   ; CODE XREF from fcn.14000687c @ 0x1400069ca
│     └───> 0x1400069fd      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
│      ┌──< 0x140006a04      jz    0x140006a2e
│      ││   0x140006a06      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x140006a0d      cmp   word [rcx+0x48], bp
│     ┌───< 0x140006a11      jz    0x140006a2e
│     │││   0x140006a13      mov   rcx, qword [rcx+0x40]
│     │││   0x140006a17      mov   r9d, 0x17                           ; 23
│     │││   0x140006a1d      mov   qword [var_28h], r12
│     │││   0x140006a22      lea   r8d, qword [r9-0x12]
│     │││   0x140006a26      mov   dl, r8b
│     │││   0x140006a29      call  fcn.140001374
│     └└└─> 0x140006a2e      mov   rbx, qword [var_8h]
│           0x140006a33      mov   eax, edi
│           0x140006a35      mov   rbp, qword [var_10h]
│           0x140006a3a      mov   rsi, qword [var_20h]
│           0x140006a3f      add   rsp, 0x30
│           0x140006a43      pop   r15
│           0x140006a45      pop   r12
│           0x140006a47      pop   rdi
└           0x140006a48      ret
┌ fcn.140006a4c(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_78h @ stack - 0x78
│           ; var int64_t var_70h @ stack - 0x70
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_58h @ stack - 0x58
│           ; var int64_t var_50h @ stack - 0x50
│           ; var int64_t var_48h @ stack - 0x48
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_20h @ stack + 0x20
│           0x140006a4c      mov   qword [var_8h], rbx
│           0x140006a51      mov   qword [var_10h], rsi
│           0x140006a56      push  rbp
│           0x140006a57      push  rdi
│           0x140006a58      push  r12
│           0x140006a5a      push  r14
│           0x140006a5c      push  r15
│           0x140006a5e      mov   rbp, rsp
│           0x140006a61      sub   rsp, 0x70
│           0x140006a65      xor   r15d, r15d
│           0x140006a68      mov   r14, r8                             ; arg3
│           0x140006a6b      mov   qword [var_40h], r15
│           0x140006a6f      mov   rbx, rdx                            ; arg2
│           0x140006a72      mov   qword [var_58h], r15
│           0x140006a76      mov   rdi, rcx                            ; arg1
│           0x140006a79      mov   qword [var_50h], r15
│           0x140006a7d      mov   qword [var_20h], r15
│           0x140006a81      lea   r12, qword [0x140004030]            ; "0@"
│           0x140006a88      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
│           0x140006a8f      lea   rax, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│       ┌─< 0x140006a96      jz    0x140006abe
│       │   0x140006a98      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x140006a9f      cmp   word [rcx+0x48], r15w
│      ┌──< 0x140006aa4      jz    0x140006abe
│      ││   0x140006aa6      mov   rcx, qword [rcx+0x40]
│      ││   0x140006aaa      lea   r9d, qword [r15+0x1b]
│      ││   0x140006aae      lea   r8d, qword [r15+0x07]
│      ││   0x140006ab2      mov   qword [var_78h], rax
│      ││   0x140006ab7      mov   dl, 0x05
│      ││   0x140006ab9      call  fcn.140001374
│      └└─> 0x140006abe      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006ac5      mov   rdx, rdi
│           0x140006ac8      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006acf      mov   rax, qword [rax+0x4e8]
│           0x140006ad6      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006adc      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006ae3      mov   rdx, rax
│           0x140006ae6      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
│           0x140006aed      mov   rax, qword [rcx+0x650]
│           0x140006af4      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006afb      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006b01      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006b08      lea   r9, qword [var_40h]
│           0x140006b0c      mov   rsi, rax
│           0x140006b0f      mov   r8d, 0x04
│           0x140006b15      mov   rdx, rbx
│           0x140006b18      mov   rax, qword [rcx+0x870]
│           0x140006b1f      lea   rcx, qword [var_50h]
│           0x140006b23      mov   qword [var_78h], rcx
│           0x140006b28      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006b2f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006b35      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006b3c      lea   r9, qword [var_48h]
│           0x140006b40      mov   r8d, 0x0c                           ; 0xc ; 12
│           0x140006b46      mov   rdx, rbx
│           0x140006b49      mov   rax, qword [rcx+0x868]
│           0x140006b50      lea   rcx, qword [var_58h]
│           0x140006b54      mov   qword [var_78h], rcx
│           0x140006b59      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006b60      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006b66      mov   edi, eax
│           0x140006b68      test  eax, eax
│       ┌─< 0x140006b6a      jns   0x140006bad
│       │   0x140006b6c      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
│      ┌──< 0x140006b73      jz    0x140006dd8
│      ││   0x140006b79      lfence
│      ││   0x140006b7c      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x140006b83      lea   rbx, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│      ││   0x140006b8a      mov   r9d, 0x1c                           ; 28
│      ││   0x140006b90      mov   dword [var_70h], eax
│      ││   0x140006b94      mov   dl, 0x03
│      ││   0x140006b96      mov   qword [var_78h], rbx
│      ││   0x140006b9b      mov   rcx, qword [rcx+0x40]
│      ││   0x140006b9f      lea   r8d, qword [r9-0x15]
│      ││   0x140006ba3      call  fcn.140001438
│     ┌───< 0x140006ba8      jmp   0x140006da7
│     ││└─> 0x140006bad      mov   qword [r14], r15
│     ││    0x140006bb0      mov   ebx, 0x1000
│     ││    0x140006bb5      cmp   byte [rsi+0x04], r15b
│     ││┌─< 0x140006bb9      jnz   0x140006c62
│     │││   0x140006bbf      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│     │││   0x140006bc6      lea   r8, qword [var_20h]
│     │││   0x140006bca      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│     │││   0x140006bd1      xor   r9d, r9d
│     │││   0x140006bd4      mov   qword [var_78h], r8
│     │││   0x140006bd9      mov   r8d, 0x20019
│     │││   0x140006bdf      mov   rdx, qword [rcx]
│     │││   0x140006be2      mov   rax, qword [rax+0x3b8]
│     │││   0x140006be9      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│     │││   0x140006bef      mov   edi, eax
│     │││   0x140006bf1      test  eax, eax
│    ┌────< 0x140006bf3      js    0x140006c5e
│    ││││   0x140006bf5      lea   rdx, qword [0x140007a70]            ; u"AppSettings"
│    ││││   0x140006bfc      lea   rcx, qword [var_38h]
│    ││││   0x140006c00      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
│    ││││   0x140006c06      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│    ││││   0x140006c0d      lea   rcx, qword [rsi+0x05]
│    ││││   0x140006c11      mov   rdx, qword [var_20h]
│    ││││   0x140006c15      lea   r8, qword [var_38h]
│    ││││   0x140006c19      mov   qword [var_68h], r15
│    ││││   0x140006c1e      mov   r9d, ebx
│    ││││   0x140006c21      mov   qword [var_70h], r15
│    ││││   0x140006c26      mov   rax, qword [rax+0x758]
│    ││││   0x140006c2d      mov   qword [var_78h], rcx
│    ││││   0x140006c32      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│    ││││   0x140006c39      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│    ││││   0x140006c3f      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│    ││││   0x140006c46      mov   rdx, qword [var_20h]
│    ││││   0x140006c4a      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│    ││││   0x140006c51      mov   rax, qword [rax+0x738]
│    ││││   0x140006c58      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│    └────> 0x140006c5e      mov   byte [rsi+0x04], 0x01
│     ││└─> 0x140006c62      mov   rdx, qword [var_48h]
│     ││    0x140006c66      mov   ecx, dword [rdx]
│     ││    0x140006c68      test  ecx, ecx
│     ││┌─< 0x140006c6a      jz    0x140006d57
│     │││   0x140006c70      cmp   ecx, 0x01                           ; 1
│    ┌────< 0x140006c73      jz    0x140006c7f
│    ││││   0x140006c75      mov   edi, 0xc0000030                     ; '0'
│   ┌─────< 0x140006c7a      jmp   0x140006da0
│   │└────> 0x140006c7f      movzx ecx, word [rdx+0x06]
│   │ │││   0x140006c83      movzx r9d, word [rdx+0x04]
│   │ │││   0x140006c88      lea   eax, qword [rcx+r9*1]
│   │ │││   0x140006c8c      cmp   eax, ebx
│   │┌────< 0x140006c8e      jnbe  0x140006da0
│   │││││   0x140006c94      lea   rax, qword [rcx+0x08]
│   │││││   0x140006c98      mov   r8d, ecx
│   │││││   0x140006c9b      cmp   qword [var_58h], rax
│  ┌──────< 0x140006c9f      jb    0x140006da0
│  ││││││   0x140006ca5      lea   rcx, qword [r9+0x05]
│  ││││││   0x140006ca9      add   rdx, 0x08
│  ││││││   0x140006cad      add   rcx, rsi
│  ││││││   0x140006cb0      call  fcn.140002640
│  ││││││   0x140006cb5      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│  ││││││   0x140006cbc      lea   r8, qword [var_20h]
│  ││││││   0x140006cc0      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│  ││││││   0x140006cc7      xor   r9d, r9d
│  ││││││   0x140006cca      mov   qword [var_78h], r8
│  ││││││   0x140006ccf      mov   r8d, 0x20006
│  ││││││   0x140006cd5      mov   rdx, qword [rcx]
│  ││││││   0x140006cd8      mov   rax, qword [rax+0x3b8]
│  ││││││   0x140006cdf      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│  ││││││   0x140006ce5      mov   edi, eax
│  ││││││   0x140006ce7      test  eax, eax
│ ┌───────< 0x140006ce9      js    0x140006da0
│ │││││││   0x140006cef      lea   rdx, qword [0x140007a70]            ; u"AppSettings"
│ │││││││   0x140006cf6      lea   rcx, qword [var_38h]
│ │││││││   0x140006cfa      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
│ │││││││   0x140006d00      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│ │││││││   0x140006d07      lea   rcx, qword [rsi+0x05]
│ │││││││   0x140006d0b      mov   rdx, qword [var_20h]
│ │││││││   0x140006d0f      lea   r8, qword [var_38h]
│ │││││││   0x140006d13      mov   qword [var_70h], rcx
│ │││││││   0x140006d18      mov   r9d, 0x03
│ │││││││   0x140006d1e      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│ │││││││   0x140006d25      mov   rax, qword [rax+0x788]
│ │││││││   0x140006d2c      mov   dword [var_78h], ebx
│ │││││││   0x140006d30      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│ │││││││   0x140006d36      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│ │││││││   0x140006d3d      mov   rdx, qword [var_20h]
│ │││││││   0x140006d41      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│ │││││││   0x140006d48      mov   rax, qword [rax+0x738]
│ │││││││   0x140006d4f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│ ────────< 0x140006d55      jmp   0x140006da0
│ ││││││└─> 0x140006d57      movzx r8d, word [rdx+0x04]
│ ││││││    0x140006d5c      cmp   r8w, bx
│ ││││││┌─< 0x140006d60      jnb   0x140006da0
│ │││││││   0x140006d62      movzx eax, word [rdx+0x06]
│ │││││││   0x140006d66      cmp   qword [var_50h], rax
│ ────────< 0x140006d6a      jb    0x140006da0
│ │││││││   0x140006d6c      lea   ecx, qword [rax+r8*1]
│ │││││││   0x140006d70      cmp   ecx, ebx
│ ────────< 0x140006d72      jbe   0x140006d80
│ │││││││   0x140006d74      sub   bx, r8w
│ │││││││   0x140006d78      mov   word [rdx+0x06], bx
│ │││││││   0x140006d7c      mov   rdx, qword [var_48h]
│ ────────> 0x140006d80      movzx eax, word [rdx+0x06]
│ │││││││   0x140006d84      mov   rcx, qword [var_40h]
│ │││││││   0x140006d88      mov   qword [r14], rax
│ │││││││   0x140006d8b      movzx r8d, word [rdx+0x06]
│ │││││││   0x140006d90      movzx eax, word [rdx+0x04]
│ │││││││   0x140006d94      lea   rdx, qword [rsi+0x05]
│ │││││││   0x140006d98      add   rdx, rax
│ │││││││   0x140006d9b      call  fcn.140002640
│ │││││││   ; CODE XREFS from fcn.140006a4c @ 0x140006c7a, 0x140006d55
│ └└└└──└─> 0x140006da0      lea   rbx, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
│     ││    ; CODE XREF from fcn.140006a4c @ 0x140006ba8
│     └───> 0x140006da7      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
│      │┌─< 0x140006dae      jz    0x140006dd8
│      ││   0x140006db0      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x140006db7      cmp   word [rcx+0x48], r15w
│     ┌───< 0x140006dbc      jz    0x140006dd8
│     │││   0x140006dbe      mov   rcx, qword [rcx+0x40]
│     │││   0x140006dc2      mov   r9d, 0x1d                           ; 29
│     │││   0x140006dc8      mov   dl, 0x05
│     │││   0x140006dca      mov   qword [var_78h], rbx
│     │││   0x140006dcf      lea   r8d, qword [r9-0x16]
│     │││   0x140006dd3      call  fcn.140001374
│     └└└─> 0x140006dd8      lea   r11, qword [var_28h]
│           0x140006ddd      mov   eax, edi
│           0x140006ddf      mov   rbx, qword [r11+0x30]
│           0x140006de3      mov   rsi, qword [r11+0x38]
│           0x140006de7      mov   rsp, r11
│           0x140006dea      pop   r15
│           0x140006dec      pop   r14
│           0x140006dee      pop   r12
│           0x140006df0      pop   rdi
│           0x140006df1      pop   rbp
└           0x140006df2      ret
┌ fcn.140006df4(int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           ; var int64_t var_d8h @ stack - 0xd8
│           ; var int64_t var_c8h @ stack - 0xc8
│           ; var int64_t var_c0h @ stack - 0xc0
│           ; var int64_t var_bch @ stack - 0xbc
│           ; var int64_t var_b8h @ stack - 0xb8
│           ; var int64_t var_a8h @ stack - 0xa8
│           ; var int64_t var_98h @ stack - 0x98
│           ; var int64_t var_70h @ stack - 0x70
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           0x140006df4      mov   qword [var_18h], rbx
│           0x140006df9      mov   qword [var_8h], rcx                 ; arg1
│           0x140006dfe      push  rbp
│           0x140006dff      lea   rbp, qword [var_68h + 0x9]
│           0x140006e04      sub   rsp, 0x100
│           0x140006e0b      mov   rbx, rcx                            ; arg1
│           0x140006e0e      xor   edx, edx
│           0x140006e10      lea   rcx, qword [var_98h]
│           0x140006e14      mov   r8d, 0x90                           ; 144
│           0x140006e1a      call  fcn.140002900
│           0x140006e1f      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006e26      lea   rax, qword [0x140006f90]
│           0x140006e2d      mov   qword [var_70h], rax
│           0x140006e31      lea   r8, qword [var_98h]
│           0x140006e35      lea   rax, qword [0x140007160]
│           0x140006e3c      mov   dword [var_98h], 0x90               ; 144
│           0x140006e43      mov   qword [var_68h], rax
│           0x140006e47      mov   rdx, rbx
│           0x140006e4a      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006e51      mov   rax, qword [rax+0x1b8]
│           0x140006e58      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006e5e      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140006e65      lea   r9, qword [var_10h]
│           0x140006e69      xorps xmm0, xmm0
│           0x140006e6c      lea   r8, qword [var_d8h]
│           0x140006e70      movups xmmword [var_c8h], xmm0
│           0x140006e74      mov   eax, 0x01
│           0x140006e79      lea   rdx, qword [var_8h]
│           0x140006e7d      mov   dword [var_c0h], eax
│           0x140006e80      mov   dword [var_bch], eax
│           0x140006e83      mov   rax, qword [0x140004018]            ; [0x140004018:8]=0x140004000 section..data
│           0x140006e8a      mov   qword [var_a8h], rax
│           0x140006e8e      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140006e95      movups xmmword [var_d8h], xmm0
│           0x140006e99      mov   dword [var_d8h], 0x38               ; '8' ; 56
│           0x140006ea0      movups xmmword [var_b8h], xmm0
│           0x140006ea4      mov   rax, qword [rax+0x258]
│           0x140006eab      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140006eb1      test  eax, eax
│       ┌─< 0x140006eb3      js    0x140006f71
│       │   0x140006eb9      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│       │   0x140006ec0      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
│       │   0x140006ec7      mov   rdx, qword [var_10h]
│       │   0x140006ecb      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│       │   0x140006ed2      mov   rax, qword [rax+0x650]
│       │   0x140006ed9      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│       │   0x140006edf      xor   edx, edx
│       │   0x140006ee1      mov   rbx, rax
│       │   0x140006ee4      and   dword [rax], 0x00
│       │   0x140006ee7      mov   byte [rax+0x1008], 0x00
│       │   0x140006eee      lea   r8d, qword [rdx+0x58]
│       │   0x140006ef2      mov   byte [rax+0x1068], 0x00
│       │   0x140006ef9      mov   rcx, qword [var_10h]
│       │   0x140006efd      and   dword [rax+0x1078], 0x00
│       │   0x140006f04      and   qword [rax+0x1080], 0x00
│       │   0x140006f0c      mov   qword [rax+0x1070], rcx
│       │   0x140006f13      lea   rcx, qword [rax+0x1010]
│       │   0x140006f1a      mov   byte [rax+0x107c], 0x00
│       │   0x140006f21      call  fcn.140002900
│       │   0x140006f26      lea   rcx, qword [rbx+0x05]
│       │   0x140006f2a      mov   byte [rbx+0x04], 0x00
│       │   0x140006f2e      xor   edx, edx
│       │   0x140006f30      mov   r8d, 0x1000
│       │   0x140006f36      call  fcn.140002900
│       │   0x140006f3b      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│       │   0x140006f42      lea   r8, qword [0x140003130]
│       │   0x140006f49      mov   rdx, qword [var_10h]
│       │   0x140006f4d      xor   r9d, r9d
│       │   0x140006f50      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│       │   0x140006f57      mov   rax, qword [rax+0x268]
│       │   0x140006f5e      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│       │   0x140006f64      test  eax, eax
│      ┌──< 0x140006f66      js    0x140006f71
│      ││   0x140006f68      mov   rcx, qword [var_10h]
│      ││   0x140006f6c      call  fcn.140007988
│      └└─> 0x140006f71      mov   rbx, qword [var_18h]
│           0x140006f79      add   rsp, 0x100
│           0x140006f80      pop   rbp
└           0x140006f81      ret
┌ fcn.140007394(int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           0x140007394      mov   qword [var_8h], rbx
│           0x140007399      mov   qword [var_10h], rsi
│           0x14000739e      push  rdi
│           0x14000739f      sub   rsp, 0x20
│           0x1400073a3      mov   rbx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│           0x1400073aa      lea   rsi, qword [0x140004028]            ; "(@"
│           0x1400073b1      mov   rdi, rcx                            ; arg1
│           0x1400073b4      cmp   rbx, rsi
│       ┌─< 0x1400073b7      jz    0x1400073fb
│       │   0x1400073b9      mov   eax, dword [0x140004128]            ; [0x140004128:4]=0
│       │   0x1400073bf      cmp   eax, 0x04                           ; 4
│      ┌──< 0x1400073c2      jz    0x14000742a
│      ││   0x1400073c4      cmp   eax, 0x02                           ; 2
│     ┌───< 0x1400073c7      jnz   0x1400073d7
│     │││   0x1400073c9      mov   edx, 0x80000002
│     │││   0x1400073ce      mov   rcx, rbx
│     │││   0x1400073d1      call  qword [sym.imp.ntoskrnl.exe_IoWMIRegistrationControl] ; [0x140003068:8]=0x83b6
│     │││   ; CODE XREF from fcn.140007394 @ 0x14000742f
│    ┌└───> 0x1400073d7      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│    ╎ ││   0x1400073de      mov   rdx, rdi
│    ╎ ││   0x1400073e1      call  sub.WppRecorder.sys_WppAutoLogStop
│    ╎ ││   0x1400073e6      lea   rax, qword [0x140004030]            ; "0@"
│    ╎ ││   0x1400073ed      mov   qword [0x140004028], rsi            ; [0x140004028:8]=0x140004028
│    ╎ ││   0x1400073f4      mov   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
│    ╎ │└─> 0x1400073fb      mov   rbx, qword [var_8h]
│    ╎ │    0x140007400      mov   rsi, qword [var_10h]
│    ╎ │    0x140007405      add   rsp, 0x20
│    ╎ │    0x140007409      pop   rdi
│    ╎ │    0x14000740a      ret
│    ╎ │┌─> 0x14000740b      mov   rcx, qword [rbx+0x38]
│    ╎ │╎   0x14000740f      test  rcx, rcx
│    ╎┌───< 0x140007412      jz    0x140007426
│    ╎││╎   0x140007414      mov   rax, qword [0x140004110]            ; [0x140004110:8]=0
│    ╎││╎   0x14000741b      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│    ╎││╎   0x140007421      and   qword [rbx+0x38], 0x00
│    ╎└───> 0x140007426      mov   rbx, qword [rbx+0x10]
│    ╎ └──> 0x14000742a      test  rbx, rbx
│    ╎  └─< 0x14000742d      jnz   0x14000740b
└    └────< 0x14000742f      jmp   0x1400073d7
┌ fcn.140007434(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           0x140007434      mov   qword [var_8h], rbx
│           0x140007439      mov   qword [var_10h], rbp
│           0x14000743e      mov   qword [var_18h], rsi
│           0x140007443      push  rdi
│           0x140007444      sub   rsp, 0x30
│           0x140007448      lea   rbp, qword [0x140004380]
│           0x14000744f      mov   rdi, rdx                            ; arg2
│           0x140007452      cmp   qword [0x140004028], rbp            ; [0x140004028:8]=0x140004028
│           0x140007459      mov   rsi, rcx                            ; arg1
│       ┌─< 0x14000745c      jz    0x1400074e6
│       │   0x140007462      mov   eax, dword [0x140004128]            ; [0x140004128:4]=0
│       │   0x140007468      mov   qword [0x140004028], rbp            ; [0x140004028:8]=0x140004028
│       │   0x14000746f      cmp   eax, 0x04                           ; 4
│      ┌──< 0x140007472      jnz   0x1400074ac
│      ││   0x140007474      mov   rbx, rbp
│     ┌───> 0x140007477      lea   rcx, qword [rbx+0x38]
│     ╎││   0x14000747b      mov   r9, rbx
│     ╎││   0x14000747e      and   qword [rcx], 0x00
│     ╎││   0x140007482      lea   r8, qword [0x140001c50]
│     ╎││   0x140007489      mov   rax, qword [0x140004118]            ; [0x140004118:8]=0
│     ╎││   0x140007490      xor   edx, edx
│     ╎││   0x140007492      mov   qword [var_38h + 0x20], rcx
│     ╎││   0x140007497      mov   rcx, qword [rbx+0x08]
│     ╎││   0x14000749b      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│     ╎││   0x1400074a1      mov   rbx, qword [rbx+0x10]
│     ╎││   0x1400074a5      test  rbx, rbx
│     └───< 0x1400074a8      jnz   0x140007477
│     ┌───< 0x1400074aa      jmp   0x1400074cd
│     │└──> 0x1400074ac      cmp   eax, 0x02                           ; 2
│     │┌──< 0x1400074af      jnz   0x1400074cd
│     │││   0x1400074b1      lea   rax, qword [0x140007600]
│     │││   0x1400074b8      mov   edx, 0x80010001
│     │││   0x1400074bd      mov   rcx, rbp
│     │││   0x1400074c0      mov   qword [0x140004380], rax            ; [0x140004380:8]=0
│     │││   0x1400074c7      call  qword [sym.imp.ntoskrnl.exe_IoWMIRegistrationControl] ; [0x140003068:8]=0x83b6
│     │││   ; CODE XREF from fcn.140007434 @ 0x1400074aa
│     └└──> 0x1400074cd      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x1400074d4      mov   r8, rdi
│       │   0x1400074d7      mov   rdx, rsi
│       │   0x1400074da      call  sub.WppRecorder.sys_WppAutoLogStart
│       │   0x1400074df      mov   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
│       └─> 0x1400074e6      mov   rbx, qword [var_8h]
│           0x1400074eb      mov   rbp, qword [var_10h]
│           0x1400074f0      mov   rsi, qword [var_18h]
│           0x1400074f5      add   rsp, 0x30
│           0x1400074f9      pop   rdi
└           0x1400074fa      ret
┌ fcn.1400074fc();
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_8h @ stack + 0x8
│           0x1400074fc      push  rbp
│           0x1400074fe      mov   rbp, rsp
│           0x140007501      sub   rsp, 0x40
│           0x140007505      and   dword [var_8h], 0x00
│           0x140007509      lea   rdx, qword [0x140007a90]            ; u"PsGetVersion"
│           0x140007510      lea   rcx, qword [var_18h]
│           0x140007514      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
│           0x14000751a      lea   rcx, qword [var_18h]
│           0x14000751e      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
│           0x140007524      lea   rdx, qword [0x140007ab0]            ; u"WmiTraceMessage"
│           0x14000752b      mov   qword [0x140004120], rax            ; [0x140004120:8]=0
│           0x140007532      lea   rcx, qword [var_18h]
│           0x140007536      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
│           0x14000753c      lea   rcx, qword [var_18h]
│           0x140007540      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
│           0x140007546      lea   rdx, qword [0x140007ad0]            ; u"WmiQueryTraceInformation"
│           0x14000754d      mov   qword [0x140004108], rax            ; [0x140004108:8]=0
│           0x140007554      lea   rcx, qword [var_18h]
│           0x140007558      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
│           0x14000755e      lea   rcx, qword [var_18h]
│           0x140007562      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
│           0x140007568      mov   qword [0x140004100], rax            ; [0x140004100:8]=0
│           0x14000756f      mov   rax, qword [0x140004120]            ; [0x140004120:8]=0
│           0x140007576      mov   dword [0x140004128], 0x02           ; [0x140004128:4]=0
│           0x140007580      test  rax, rax
│       ┌─< 0x140007583      jz    0x140007597
│       │   0x140007585      xor   r9d, r9d
│       │   0x140007588      lea   rcx, qword [var_8h]
│       │   0x14000758c      xor   r8d, r8d
│       │   0x14000758f      xor   edx, edx
│       │   0x140007591      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│       └─> 0x140007597      cmp   dword [var_8h], 0x06
│       ┌─< 0x14000759b      jb    0x1400075f0
│       │   0x14000759d      lea   rdx, qword [0x140007b10]            ; u"EtwRegisterClassicProvider"
│       │   0x1400075a4      lea   rcx, qword [var_18h]
│       │   0x1400075a8      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
│       │   0x1400075ae      lea   rcx, qword [var_18h]
│       │   0x1400075b2      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
│       │   0x1400075b8      mov   qword [0x140004118], rax            ; [0x140004118:8]=0
│       │   0x1400075bf      test  rax, rax
│      ┌──< 0x1400075c2      jz    0x1400075f0
│      ││   0x1400075c4      lea   rdx, qword [0x140007b50]            ; u"EtwUnregister"
│      ││   0x1400075cb      lea   rcx, qword [var_18h]
│      ││   0x1400075cf      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
│      ││   0x1400075d5      lea   rcx, qword [var_18h]
│      ││   0x1400075d9      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
│      ││   0x1400075df      mov   qword [0x140004110], rax            ; [0x140004110:8]=0
│      ││   0x1400075e6      mov   dword [0x140004128], 0x04           ; [0x140004128:4]=0
│      └└─> 0x1400075f0      add   rsp, 0x40
│           0x1400075f4      pop   rbp
└           0x1400075f5      ret
            ; CALL XREF from fcn.140006df4 @ 0x140006f6c
┌ fcn.140007988(int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           ; var int64_t var_78h @ stack - 0x78
│           ; var int64_t var_70h @ stack - 0x70
│           ; var int64_t var_68h @ stack - 0x68
│           ; var int64_t var_64h @ stack - 0x64
│           ; var int64_t var_60h @ stack - 0x60
│           ; var int64_t var_5bh @ stack - 0x5b
│           ; var int64_t var_40h @ stack - 0x40
│           ; var int64_t var_30h @ stack - 0x30
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_10h @ stack + 0x10
│           0x140007988      push  rbx
│           0x14000798a      sub   rsp, 0x90
│           0x140007991      xor   edx, edx
│           0x140007993      mov   rbx, rcx                            ; arg1
│           0x140007996      lea   rcx, qword [var_68h]
│           0x14000799b      lea   r8d, qword [rdx+0x60]
│           0x14000799f      call  fcn.140002900
│           0x1400079a4      or    dword [var_18h], 0xffffffff         ; [0xff:4]=-1 ; 255
│           0x1400079ac      lea   rax, qword [0x140007880]
│           0x1400079b3      mov   qword [var_40h], rax
│           0x1400079b8      lea   rcx, qword [var_10h]
│           0x1400079c0      lea   rax, qword [0x140001ca0]
│           0x1400079c7      mov   dword [var_68h], 0x60               ; '`'
│                                                                      ; [0x60:4]=-1 ; 96
│           0x1400079cf      mov   qword [var_30h], rax
│           0x1400079d4      lea   r8, qword [var_68h]
│           0x1400079d9      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x1400079e0      xor   r9d, r9d
│           0x1400079e3      mov   dword [var_60h], 0x02
│           0x1400079eb      mov   rdx, rbx
│           0x1400079ee      mov   byte [var_5bh], 0x01
│           0x1400079f3      mov   dword [var_64h], 0x02
│           0x1400079fb      mov   rax, qword [rax+0x4c0]
│           0x140007a02      mov   qword [var_78h], rcx
│           0x140007a07      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x140007a0e      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140007a14      mov   ebx, eax
│           0x140007a16      test  eax, eax
│       ┌─< 0x140007a18      jns   0x140007a5d
│       │   0x140007a1a      lfence
│       │   0x140007a1d      lea   rax, qword [0x140004030]            ; "0@"
│       │   0x140007a24      cmp   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
│      ┌──< 0x140007a2b      jz    0x140007a59
│      ││   0x140007a2d      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x140007a34      lea   rax, qword [0x140003190]
│      ││   0x140007a3b      mov   r9d, 0x0a
│      ││   0x140007a41      mov   dword [var_70h], ebx
│      ││   0x140007a45      mov   dl, 0x02
│      ││   0x140007a47      mov   qword [var_78h], rax
│      ││   0x140007a4c      mov   rcx, qword [rcx+0x40]
│      ││   0x140007a50      lea   r8d, qword [r9-0x06]
│      ││   0x140007a54      call  fcn.140001438
│      └──> 0x140007a59      mov   eax, ebx
│      ┌──< 0x140007a5b      jmp   0x140007a60
│      │└─> 0x140007a5d      lfence
│      │    ; CODE XREF from fcn.140007988 @ 0x140007a5b
│      └──> 0x140007a60      add   rsp, 0x90
│           0x140007a67      pop   rbx
└           0x140007a68      ret
            ; CALL XREFS from fcn.1400020ec @ 0x140002112, 0x1400021a6
            ;-- section.INIT:
┌ fcn.140008000(int64_t arg1, int64_t arg2, int64_t arg_37h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_98h @ stack - 0x98
│           ; var int64_t var_90h @ stack - 0x90
│           ; var int64_t var_19h @ stack - 0x19
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_11h @ stack - 0x11
│           ; var int64_t var_7h @ stack + 0x7
│           ; var int64_t var_fh @ stack + 0xf
│           ; var int64_t var_17h @ stack + 0x17
│           ; var int64_t var_1fh @ stack + 0x1f
│           ; var int64_t var_23h @ stack + 0x23
│           ; var int64_t var_27h @ stack + 0x27
│           ; arg int64_t arg_37h @ stack + 0x37
│           0x140008000      mov   rax, rsp                            ; [05] -r-x section size 4096 named INIT
│           0x140008003      mov   qword [rax+0x08], rbx
│           0x140008007      mov   qword [rax+0x10], rsi
│           0x14000800b      mov   qword [rax+0x18], rdi
│           0x14000800f      push  rbp
│           0x140008010      push  r12
│           0x140008012      push  r15
│           0x140008014      lea   rbp, qword [rax-0x5f]
│           0x140008018      sub   rsp, 0xa0
│           0x14000801f      xor   esi, esi
│           0x140008021      mov   qword [0x1400043a8], 0x01           ; [0x1400043a8:8]=0
│           0x14000802c      lea   rax, qword [0x140003150]
│           0x140008033      mov   qword [0x140004380], rsi            ; [0x140004380:8]=0
│           0x14000803a      mov   qword [0x140004388], rax            ; [0x140004388:8]=0
│           0x140008041      mov   rbx, rdx                            ; arg2
│           0x140008044      mov   qword [0x140004390], rsi            ; [0x140004390:8]=0
│           0x14000804b      mov   rdi, rcx                            ; arg1
│           0x14000804e      mov   qword [0x1400043a0], rsi            ; [0x1400043a0:8]=0
│           0x140008055      mov   qword [0x1400043c0], rsi            ; [0x1400043c0:8]=0
│           0x14000805c      mov   dword [0x1400043c8], esi            ; [0x1400043c8:4]=0
│           0x140008062      call  fcn.1400074fc
│           0x140008067      mov   rdx, rbx
│           0x14000806a      mov   qword [0x1400043a0], rsi            ; [0x1400043a0:8]=0
│           0x140008071      mov   rcx, rdi
│           0x140008074      call  fcn.140007434
│           0x140008079      lea   r15, qword [0x140004030]            ; "0@"
│           0x140008080      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
│           0x140008087      lea   r12, qword [0x140003180]            ; "G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\xe1\xb9\xefs缃R?\xc9\xc5˾Pm\xfb\x98K"
│       ┌─< 0x14000808e      jz    0x1400080b5
│       │   0x140008090      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x140008097      cmp   word [rcx+0x48], si
│      ┌──< 0x14000809b      jz    0x1400080b5
│      ││   0x14000809d      mov   rcx, qword [rcx+0x40]
│      ││   0x1400080a1      lea   r9d, qword [rsi+0x0a]
│      ││   0x1400080a5      lea   r8d, qword [rsi+0x02]
│      ││   0x1400080a9      mov   qword [var_98h], r12
│      ││   0x1400080ae      mov   dl, 0x05
│      ││   0x1400080b0      call  fcn.140001374
│      └└─> 0x1400080b5      xor   eax, eax
│           0x1400080b7      mov   qword [var_19h], 0x20               ; 32
│           0x1400080bf      mov   qword [arg_37h], rax
│           0x1400080c3      lea   rcx, qword [var_19h]
│           0x1400080c7      xorps xmm0, xmm0
│           0x1400080ca      mov   qword [var_90h], rsi
│           0x1400080cf      movups xmmword [var_7h], xmm0
│           0x1400080d3      lea   rax, qword [0x140007320]
│           0x1400080da      mov   dword [var_7h], 0x38                ; '8' ; 56
│           0x1400080e1      mov   qword [var_fh], rax
│           0x1400080e5      lea   r9, qword [var_7h]
│           0x1400080e9      movups xmmword [var_17h], xmm0
│           0x1400080ed      lea   rax, qword [0x140007280]
│           0x1400080f4      mov   dword [var_1fh], 0x01
│           0x1400080fb      mov   qword [var_11h], rax
│           0x1400080ff      mov   r8, rbx
│           0x140008102      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x140008109      mov   rdx, rdi
│           0x14000810c      movups xmmword [var_27h], xmm0
│           0x140008110      mov   dword [var_23h], 0x01
│           0x140008117      movdqu xmmword [var_11h + 0x8], xmm0
│           0x14000811c      mov   rax, qword [rax+0x3a0]
│           0x140008123      mov   qword [var_98h], rcx
│           0x140008128      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x14000812f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140008135      mov   ebx, eax
│           0x140008137      test  eax, eax
│       ┌─< 0x140008139      jns   0x140008177
│       │   0x14000813b      lfence
│       │   0x14000813e      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
│      ┌──< 0x140008145      jz    0x14000816d
│      ││   0x140008147      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x14000814e      mov   r9d, 0x0b                           ; 0xb ; 11
│      ││   0x140008154      mov   dword [var_90h], eax
│      ││   0x140008158      mov   qword [var_98h], r12
│      ││   0x14000815d      mov   rcx, qword [rcx+0x40]
│      ││   0x140008161      lea   r8d, qword [r9-0x09]
│      ││   0x140008165      mov   dl, r8b
│      ││   0x140008168      call  fcn.140001438
│      └──> 0x14000816d      mov   rcx, rdi
│       │   0x140008170      call  fcn.140007394
│      ┌──< 0x140008175      jmp   0x1400081aa
│      │└─> 0x140008177      lfence
│      │    0x14000817a      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
│      │┌─< 0x140008181      jz    0x1400081aa
│      ││   0x140008183      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│      ││   0x14000818a      cmp   word [rcx+0x48], si
│     ┌───< 0x14000818e      jz    0x1400081aa
│     │││   0x140008190      mov   rcx, qword [rcx+0x40]
│     │││   0x140008194      mov   r9d, 0x0c                           ; 0xc ; 12
│     │││   0x14000819a      mov   dl, 0x05
│     │││   0x14000819c      mov   qword [var_98h], r12
│     │││   0x1400081a1      lea   r8d, qword [r9-0x0a]
│     │││   0x1400081a5      call  fcn.140001374
│     │││   ; CODE XREF from fcn.140008000 @ 0x140008175
│     └└└─> 0x1400081aa      lea   r11, qword [var_18h]
│           0x1400081b2      mov   eax, ebx
│           0x1400081b4      mov   rbx, qword [r11+0x20]
│           0x1400081b8      mov   rsi, qword [r11+0x28]
│           0x1400081bc      mov   rdi, qword [r11+0x30]
│           0x1400081c0      mov   rsp, r11
│           0x1400081c3      pop   r15
│           0x1400081c5      pop   r12
│           0x1400081c7      pop   rbp
└           0x1400081c8      ret
            ; CALL XREF from entry0 @ 0x1400020d0
┌ fcn.1400081cc();
│           0x1400081cc      mov   rax, qword [0x140004040]            ; [0x140004040:8]=0x2b992ddfa232
│           0x1400081d3      test  rax, rax
│       ┌─< 0x1400081d6      jz    0x1400081f3
│       │   0x1400081d8      mov   rcx, 0x2b992ddfa232
│       │   0x1400081e2      cmp   rax, rcx
│      ┌──< 0x1400081e5      jz    0x1400081f3
│      ││   0x1400081e7      not   rax
│      ││   0x1400081ea      mov   qword [0x140004048], rax            ; [0x140004048:8]=0xffffd466d2205dcd
│      ││   0x1400081f1      ret
..
│      └└─> 0x1400081f3      mov   ecx, 0x06
│           0x1400081f8      int   0x29
└           0x1400081fa      int3
