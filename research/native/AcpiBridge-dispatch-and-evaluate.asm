┌ fcn.140007880(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4, int64_t arg_28h);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; arg int64_t arg4 @ r9
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; arg int64_t arg_28h @ stack + 0x28
│           0x140007880      mov   r11, rsp
│           0x140007883      mov   qword [r11+0x08], rbx
│           0x140007887      mov   qword [r11+0x10], rsi
│           0x14000788b      push  rdi
│           0x14000788c      sub   rsp, 0x60
│           0x140007890      and   qword [r11-0x18], 0x00
│           0x140007895      mov   rax, r9                             ; arg4
│           0x140007898      mov   rdi, rdx                            ; arg2
│           0x14000789b      mov   rsi, rcx                            ; arg1
│           0x14000789e      mov   ebx, dword [arg_28h]
│           0x1400078a5      lea   rcx, qword [0x140004030]            ; "0@"
│           0x1400078ac      cmp   qword [0x140004030], rcx            ; [0x140004030:8]=0x140004030
│       ┌─< 0x1400078b3      jz    0x1400078f1
│       │   0x1400078b5      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
│       │   0x1400078bc      mov   r9d, 0x0b                           ; 0xb ; 11
│       │   0x1400078c2      mov   dword [var_20h], ebx
│       │   0x1400078c6      mov   dword [var_28h], eax
│       │   0x1400078ca      lea   rax, qword [0x140003190]
│       │   0x1400078d1      mov   dword [r11-0x30], r8d               ; arg3
│       │   0x1400078d5      mov   rcx, qword [rcx+0x40]
│       │   0x1400078d9      lea   r8d, qword [r9-0x07]
│       │   0x1400078dd      mov   qword [r11-0x38], rdx
│       │   0x1400078e1      mov   dl, r8b
│       │   0x1400078e4      mov   qword [r11-0x40], rsi
│       │   0x1400078e8      mov   qword [r11-0x48], rax
│       │   0x1400078ec      call  0x140001cf0
│       └─> 0x1400078f1      sub   ebx, 0x322400
│       ┌─< 0x1400078f7      jz    0x140007941
│       │   0x1400078f9      sub   ebx, 0x04
│      ┌──< 0x1400078fc      jz    0x140007934
│      ││   0x1400078fe      sub   ebx, 0x04
│     ┌───< 0x140007901      jz    0x140007922
│     │││   0x140007903      cmp   ebx, 0x04                           ; 4
│    ┌────< 0x140007906      jz    0x140007910
│    ││││   0x140007908      mov   r8d, 0xc0000010
│   ┌─────< 0x14000790e      jmp   0x140007954
│   │└────> 0x140007910      lea   r8, qword [var_18h]
│   │ │││   0x140007915      mov   rdx, rdi
│   │ │││   0x140007918      mov   rcx, rsi
│   │ │││   0x14000791b      call  fcn.140006a4c
│   │┌────< 0x140007920      jmp   0x140007951
│   ││└───> 0x140007922      lea   r8, qword [var_18h]
│   ││ ││   0x140007927      mov   rdx, rdi
│   ││ ││   0x14000792a      mov   rcx, rsi
│   ││ ││   0x14000792d      call  fcn.14000670c
│   ││┌───< 0x140007932      jmp   0x140007951
│   │││└──> 0x140007934      mov   rdx, rdi
│   │││ │   0x140007937      mov   rcx, rsi
│   │││ │   0x14000793a      call  fcn.14000687c
│   │││┌──< 0x14000793f      jmp   0x140007951
│   ││││└─> 0x140007941      lea   r8, qword [var_18h]
│   ││││    0x140007946      mov   rdx, rdi
│   ││││    0x140007949      mov   rcx, rsi
│   ││││    0x14000794c      call  fcn.140006560
│   ││││    ; CODE XREFS from fcn.140007880 @ 0x140007920, 0x140007932, 0x14000793f
│   │└└└──> 0x140007951      mov   r8d, eax
│   │       ; CODE XREF from fcn.140007880 @ 0x14000790e
│   └─────> 0x140007954      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
│           0x14000795b      mov   rdx, rdi
│           0x14000795e      mov   r9, qword [var_18h]
│           0x140007963      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
│           0x14000796a      mov   rax, qword [rax+0x848]
│           0x140007971      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600
│           0x140007977      mov   rbx, qword [var_8h]
│           0x14000797c      mov   rsi, qword [var_10h]
│           0x140007981      add   rsp, 0x60
│           0x140007985      pop   rdi
└           0x140007986      ret
            ; CALL XREF from fcn.140007880 @ 0x14000794c
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
│      ││   0x1400065c6      call  0x140001374
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
│     │││   0x14000666b      call  0x140002640
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
│     │││   0x1400066ac      call  0x14000152c
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
│      ││   0x1400066ec      call  0x140001374
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
            ; CALL XREF from fcn.140007880 @ 0x14000792d
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
│      ││   0x140006769      call  0x140001374
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
│      ││   0x140006814      call  0x140001438
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
│     │││   0x14000685b      call  0x140001374
│     └└└─> 0x140006860      mov   rbp, qword [var_10h]
│           0x140006865      mov   eax, ebx
│           0x140006867      mov   rbx, qword [var_8h]
│           0x14000686c      mov   rsi, qword [var_18h]
│           0x140006871      add   rsp, 0x30
│           0x140006875      pop   r15
│           0x140006877      pop   r12
│           0x140006879      pop   rdi
└           0x14000687a      ret
            ; CALL XREF from fcn.140007880 @ 0x14000793a
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
│      ││   0x1400068d3      call  0x140001374
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
│     │ │   0x1400069f8      call  0x140001438
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
│     │││   0x140006a29      call  0x140001374
│     └└└─> 0x140006a2e      mov   rbx, qword [var_8h]
│           0x140006a33      mov   eax, edi
│           0x140006a35      mov   rbp, qword [var_10h]
│           0x140006a3a      mov   rsi, qword [var_20h]
│           0x140006a3f      add   rsp, 0x30
│           0x140006a43      pop   r15
│           0x140006a45      pop   r12
│           0x140006a47      pop   rdi
└           0x140006a48      ret
            ; CALL XREF from fcn.140007880 @ 0x14000791b
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
│      ││   0x140006ab9      call  0x140001374
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
│      ││   0x140006ba3      call  0x140001438
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
│  ││││││   0x140006cb0      call  0x140002640
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
│ │││││││   0x140006d9b      call  0x140002640
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
│     │││   0x140006dd3      call  0x140001374
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
            ; CALL XREF from fcn.140006560 @ 0x140006642
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
│      ││   0x14000606e      call  0x140001374
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
│      ││   0x140006191      call  0x140001b08
│      └──> 0x140006196      xor   r13d, r13d
│      ┌──< 0x140006199      jmp   0x1400064c0
│      │└─> 0x14000619e      mov   rcx, qword [var_e8h]
│      │    0x1400061a3      mov   r8, r12
│      │    0x1400061a6      xor   edx, edx
│      │    0x1400061a8      call  0x140002900
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
│      ││   0x14000621e      call  0x140001740
│      │└─> 0x140006223      mov   rbx, qword [var_e8h]
│      │    0x140006228      mov   r12d, 0x02
│      │    0x14000622e      mov   r8, rsi
│      │    0x140006231      lea   eax, qword [r12+0x0e]
│      │    0x140006236      mov   dword [rbx+0x10], 0x100002          ; [0x100002:4]=-1
│      │    0x14000623d      mov   r9d, eax
│      │    0x140006240      lea   rcx, qword [rbx+0x14]
│      │    0x140006244      mov   edx, eax
│      │    0x140006246      call  0x140001ee0
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
│      ││   0x14000629d      call  0x140001ee0
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
│     │││   0x14000630e      call  0x1400019f0
│    ┌────< 0x140006313      jmp   0x1400064c0
│    │││└─> 0x140006318      mov   r8, r15
│    │││    0x14000631b      xor   edx, edx
│    │││    0x14000631d      mov   rcx, rbx
│    │││    0x140006320      call  0x140002900
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
│   │││││   0x140006417      call  0x14000152c
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
│  ││││││   0x140006472      call  0x140001884
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
│ │││││││   0x1400064ad      call  0x14000164c
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
│      ││   0x140006537      call  0x140001374
│      └└─> 0x14000653c      mov   eax, edi
│           0x14000653e      mov   rcx, qword [var_58h]
│           0x140006542      xor   rcx, rsp
│           0x140006545      call  0x140001ea0
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
