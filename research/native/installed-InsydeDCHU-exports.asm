┌ sym.InsydeDCHU.dll_GetDCHU_Data_Integer(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_568h @ stack - 0x568
│           ; var int64_t var_560h @ stack - 0x560
│           ; var int64_t var_558h @ stack - 0x558
│           ; var int64_t var_550h @ stack - 0x550
│           ; var int64_t var_548h @ stack - 0x548
│           ; var int64_t var_448h @ stack - 0x448
│           ; var int64_t var_438h @ stack - 0x438
│           ; var int64_t var_428h @ stack - 0x428
│           ; var int64_t var_424h @ stack - 0x424
│           ; var int64_t var_420h @ stack - 0x420
│           ; var int64_t var_41ch @ stack - 0x41c
│           ; var int64_t var_41ah @ stack - 0x41a
│           ; var int64_t var_416h @ stack - 0x416
│           ; var int64_t var_18h @ stack - 0x18
│           ; var int64_t var_20h @ stack + 0x20
│           0x1800026f0      mov   qword [var_20h], rbx
│           0x1800026f5      push  rdi
│           0x1800026f6      sub   rsp, 0x580
│           0x1800026fd      mov   rax, qword [0x1802568b0]            ; [0x1802568b0:8]=0x2b992ddfa232
│           0x180002704      xor   rax, rsp
│           0x180002707      mov   qword [var_18h], rax
│           0x18000270f      mov   rdi, rdx                            ; arg2
│           0x180002712      mov   ebx, ecx                            ; arg1
│           0x180002714      call  0x180002370
│           0x180002719      mov   dword [0x180263374], eax            ; [0x180263374:4]=0
│           0x18000271f      test  eax, eax
│       ┌─< 0x180002721      js    0x1800028f2
│       │   0x180002727      xor   edx, edx
│       │   0x180002729      mov   qword [var_18h + 0x30], rsi
│       │   0x180002731      mov   r8d, 0x100                          ; 256
│       │   0x180002737      lea   rcx, qword [var_548h]
│       │   0x18000273c      call  0x180190a70
│       │   0x180002741      movups xmm0, xmmword [0x18021d238]        ; [0x18021d238:16]=-1
│       │   0x180002748      mov   eax, 0x104                          ; 260
│       │   0x18000274d      mov   dword [var_428h], 0x00
│       │   0x180002758      xor   edx, edx
│       │   0x18000275a      mov   dword [var_424h], 0x4d53445f        ; '_DSM'
│       │                                                              ; [0x4d53445f:4]=-1
│       │   0x180002765      mov   r8d, 0x400                          ; 1024
│       │   0x18000276b      movaps xmmword [var_438h], xmm0
│       │   0x180002773      lea   rcx, qword [var_41ah]
│       │   0x18000277b      mov   dword [var_420h], ebx
│       │   0x180002782      mov   word [var_41ch], ax
│       │   0x18000278a      call  0x180190a70
│       │   0x18000278f      mov   rsi, qword [var_18h + 0x30]
│       │   0x180002797      lea   rcx, qword [var_416h]
│       │   0x18000279f      mov   edx, 0x02
│       │   0x1800027a4      mov   dword [var_41ah], 0x1000002         ; [0x1000002:4]=-1
│       │   0x1800027af      lea   rax, qword [var_548h]
│       │   0x1800027b4      nop   dword [rax], eax
│       │   0x1800027b8      nop   dword [rax+rax*1], eax
│      ┌──> 0x1800027c0      lea   rcx, qword [rcx+0x80]
│      ╎│   0x1800027c7      movups xmm0, xmmword [rax]
│      ╎│   0x1800027ca      movups xmm1, xmmword [rax+0x10]
│      ╎│   0x1800027ce      lea   rax, qword [rax+0x80]
│      ╎│   0x1800027d5      movups xmmword [rcx-0x80], xmm0
│      ╎│   0x1800027d9      movups xmm0, xmmword [rax-0x60]
│      ╎│   0x1800027dd      movups xmmword [rcx-0x70], xmm1
│      ╎│   0x1800027e1      movups xmm1, xmmword [rax-0x50]
│      ╎│   0x1800027e5      movups xmmword [rcx-0x60], xmm0
│      ╎│   0x1800027e9      movups xmm0, xmmword [rax-0x40]
│      ╎│   0x1800027ed      movups xmmword [rcx-0x50], xmm1
│      ╎│   0x1800027f1      movups xmm1, xmmword [rax-0x30]
│      ╎│   0x1800027f5      movups xmmword [rcx-0x40], xmm0
│      ╎│   0x1800027f9      movups xmm0, xmmword [rax-0x20]
│      ╎│   0x1800027fd      movups xmmword [rcx-0x30], xmm1
│      ╎│   0x180002801      movups xmm1, xmmword [rax-0x10]
│      ╎│   0x180002805      movups xmmword [rcx-0x20], xmm0
│      ╎│   0x180002809      movups xmmword [rcx-0x10], xmm1
│      ╎│   0x18000280d      sub   rdx, 0x01
│      └──< 0x180002811      jnz   0x1800027c0
│       │   0x180002813      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│       │   0x180002819      mov   edx, 0x08
│       │   0x18000281e      mov   r8d, 0x40c                          ; 1036
│       │   0x180002824      mov   rcx, rax
│       │   0x180002827      call  qword [sym.imp.KERNEL32.dll_HeapAlloc] ; [0x1801b8840:8]=0x252090 ; LPVOID HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
│       │   0x18000282d      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│       │   0x180002834      lea   r8, qword [var_438h]
│       │   0x18000283c      mov   rbx, rax
│       │   0x18000283f      mov   qword [var_550h], 0x00
│       │   0x180002848      lea   rax, qword [var_448h]
│       │   0x180002850      mov   r9d, 0x420                          ; 1056
│       │   0x180002856      mov   qword [var_558h], rax
│       │   0x18000285b      mov   edx, 0x322400
│       │   0x180002860      mov   dword [var_560h], 0x40c             ; [0x40c:4]=-1 ; 1036
│       │   0x180002868      mov   qword [var_568h], rbx
│       │   0x18000286d      call  qword [sym.imp.KERNEL32.dll_DeviceIoControl] ; [0x1801b8818:8]=0x252110 ; BOOL DeviceIoControl(HANDLE hDevice, DWORD dwIoControlCode, LPVOID lpInBuffer, DWORD nInBufferSize, LPVOID lpOutBuffer, DWORD nOutBufferSize, LPDWORD lpBytesReturned, LPOVERLAPPED lpOverlapped)
│       │   0x180002873      test  eax, eax
│      ┌──< 0x180002875      jz    0x1800028f2
│      ││   0x180002877      test  rbx, rbx
│     ┌───< 0x18000287a      jz    0x1800028ce
│     │││   0x18000287c      xor   edx, edx
│     │││   0x18000287e      lea   rcx, qword [rbx+0x0c]
│     │││   0x180002882      cmp   dword [rbx+0x08], edx
│    ┌────< 0x180002885      jbe   0x1800028ba
│    ││││   0x180002887      lea   r8d, qword [rdx+0x04]
│    ││││   0x18000288b      nop   dword [rax+rax*1], eax
│   ┌─────> 0x180002890      cmp   word [rcx], 0x00
│  ┌──────< 0x180002894      jnz   0x18000289b
│  │╎││││   0x180002896      mov   eax, dword [rcx+0x04]
│  │╎││││   0x180002899      mov   dword [rdi], eax
│  └──────> 0x18000289b      movzx eax, word [rcx+0x02]
│   ╎││││   0x18000289f      cmp   r8w, ax
│  ┌──────< 0x1800028a3      jbe   0x1800028aa
│  │╎││││   0x1800028a5      mov   rax, r8
│ ┌───────< 0x1800028a8      jmp   0x1800028ad
│ │└──────> 0x1800028aa      movzx eax, ax
│ │ ╎││││   ; CODE XREF from sym.InsydeDCHU.dll_GetDCHU_Data_Integer @ 0x1800028a8
│ └───────> 0x1800028ad      add   rcx, r8
│   ╎││││   0x1800028b0      inc   edx
│   ╎││││   0x1800028b2      add   rcx, rax
│   ╎││││   0x1800028b5      cmp   edx, dword [rbx+0x08]
│   └─────< 0x1800028b8      jb    0x180002890
│    └────> 0x1800028ba      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│     │││   0x1800028c0      mov   r8, rbx
│     │││   0x1800028c3      xor   edx, edx
│     │││   0x1800028c5      mov   rcx, rax
│     │││   0x1800028c8      call  qword [sym.imp.KERNEL32.dll_HeapFree] ; [0x1801b8880:8]=0x251fd8 ; BOOL HeapFree(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
│     └───> 0x1800028ce      cmp   dword [0x180263380], 0x00           ; [0x180263380:4]=0
│     ┌───< 0x1800028d5      jz    0x1800028ee
│     │││   0x1800028d7      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│     │││   0x1800028de      call  qword [sym.imp.KERNEL32.dll_CloseHandle] ; [0x1801b8858:8]=0x252050 ; "P %" ; BOOL CloseHandle(HANDLE hObject)
│     │││   0x1800028e4      mov   dword [0x180263380], 0x00           ; [0x180263380:4]=0
│     └───> 0x1800028ee      mov   eax, dword [rdi]
│     ┌───< 0x1800028f0      jmp   0x1800028f4
│     │└└─> 0x1800028f2      xor   eax, eax
│     │     ; CODE XREF from sym.InsydeDCHU.dll_GetDCHU_Data_Integer @ 0x1800028f0
│     └───> 0x1800028f4      mov   rcx, qword [var_18h]
│           0x1800028fc      xor   rcx, rsp
│           0x1800028ff      call  0x18018ee00
│           0x180002904      mov   rbx, qword [var_20h]
│           0x18000290c      add   rsp, 0x580
│           0x180002913      pop   rdi
└           0x180002914      ret
┌ sym.InsydeDCHU.dll_SetDCHU_Data(int64_t arg1, int64_t arg2, int64_t arg3);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; var int64_t var_578h @ stack - 0x578
│           ; var int64_t var_570h @ stack - 0x570
│           ; var int64_t var_568h @ stack - 0x568
│           ; var int64_t var_560h @ stack - 0x560
│           ; var int64_t var_558h @ stack - 0x558
│           ; var int64_t var_548h @ stack - 0x548
│           ; var int64_t var_538h @ stack - 0x538
│           ; var int64_t var_534h @ stack - 0x534
│           ; var int64_t var_530h @ stack - 0x530
│           ; var int64_t var_52ch @ stack - 0x52c
│           ; var int64_t var_52ah @ stack - 0x52a
│           ; var int64_t var_526h @ stack - 0x526
│           ; var int64_t var_128h @ stack - 0x128
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           0x180002920      push  rbp
│           0x180002922      push  rsi
│           0x180002923      push  rdi
│           0x180002924      sub   rsp, 0x580
│           0x18000292b      mov   rax, qword [0x1802568b0]            ; [0x1802568b0:8]=0x2b992ddfa232
│           0x180002932      xor   rax, rsp
│           0x180002935      mov   qword [var_28h], rax
│           0x18000293d      movsxd rbp, r8d                           ; arg3
│           0x180002940      mov   rdi, rdx                            ; arg2
│           0x180002943      mov   esi, ecx                            ; arg1
│           0x180002945      call  0x180002370
│           0x18000294a      mov   dword [0x180263374], eax            ; [0x180263374:4]=0
│           0x180002950      test  eax, eax
│       ┌─< 0x180002952      jns   0x18000295b
│       │   0x180002954      xor   eax, eax
│      ┌──< 0x180002956      jmp   0x180002b3b
│      │└─> 0x18000295b      mov   qword [var_10h], rbx
│      │    0x180002963      lea   rcx, qword [var_128h]
│      │    0x18000296b      xor   edx, edx
│      │    0x18000296d      mov   qword [var_18h], r14
│      │    0x180002975      mov   r8d, 0x100                          ; 256
│      │    0x18000297b      call  0x180190a70
│      │    0x180002980      movups xmm0, xmmword [0x18021d238]        ; [0x18021d238:16]=-1
│      │    0x180002987      mov   eax, 0x104                          ; 260
│      │    0x18000298c      mov   dword [var_534h], 0x4d53445f        ; '_DSM'
│      │                                                               ; [0x4d53445f:4]=-1
│      │    0x180002994      xor   ebx, ebx
│      │    0x180002996      mov   dword [var_530h], esi
│      │    0x18000299a      xor   edx, edx
│      │    0x18000299c      movaps xmmword [var_548h], xmm0
│      │    0x1800029a1      mov   r8d, 0x400                          ; 1024
│      │    0x1800029a7      mov   dword [var_538h], ebx
│      │    0x1800029ab      lea   rcx, qword [var_52ah]
│      │    0x1800029b0      mov   word [var_52ch], ax
│      │    0x1800029b5      call  0x180190a70
│      │    0x1800029ba      mov   r8, rbp
│      │    0x1800029bd      test  ebp, ebp
│      │┌─< 0x1800029bf      jle   0x1800029d1
│      ││   0x1800029c1      mov   rdx, rdi
│      ││   0x1800029c4      lea   rcx, qword [var_128h]
│      ││   0x1800029cc      call  0x180190c30
│      │└─> 0x1800029d1      mov   r14, qword [var_18h]
│      │    0x1800029d9      lea   rax, qword [var_526h]
│      │    0x1800029de      mov   edx, 0x02
│      │    0x1800029e3      mov   dword [var_52ah], 0x1000002         ; [0x1000002:4]=-1
│      │    0x1800029eb      lea   rcx, qword [var_128h]
│      │    0x1800029f3      nop   dword [rax], eax
│      │    0x1800029f7      nop   word [rax+rax*1], ax
│      │┌─> 0x180002a00      lea   rax, qword [rax+0x80]
│      │╎   0x180002a07      movups xmm0, xmmword [rcx]
│      │╎   0x180002a0a      movups xmm1, xmmword [rcx+0x10]
│      │╎   0x180002a0e      lea   rcx, qword [rcx+0x80]
│      │╎   0x180002a15      movups xmmword [rax-0x80], xmm0
│      │╎   0x180002a19      movups xmm0, xmmword [rcx-0x60]
│      │╎   0x180002a1d      movups xmmword [rax-0x70], xmm1
│      │╎   0x180002a21      movups xmm1, xmmword [rcx-0x50]
│      │╎   0x180002a25      movups xmmword [rax-0x60], xmm0
│      │╎   0x180002a29      movups xmm0, xmmword [rcx-0x40]
│      │╎   0x180002a2d      movups xmmword [rax-0x50], xmm1
│      │╎   0x180002a31      movups xmm1, xmmword [rcx-0x30]
│      │╎   0x180002a35      movups xmmword [rax-0x40], xmm0
│      │╎   0x180002a39      movups xmm0, xmmword [rcx-0x20]
│      │╎   0x180002a3d      movups xmmword [rax-0x30], xmm1
│      │╎   0x180002a41      movups xmm1, xmmword [rcx-0x10]
│      │╎   0x180002a45      movups xmmword [rax-0x20], xmm0
│      │╎   0x180002a49      movups xmmword [rax-0x10], xmm1
│      │╎   0x180002a4d      sub   rdx, 0x01
│      │└─< 0x180002a51      jnz   0x180002a00
│      │    0x180002a53      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│      │    0x180002a59      mov   edx, 0x08
│      │    0x180002a5e      mov   r8d, 0x40c                          ; 1036
│      │    0x180002a64      mov   rcx, rax
│      │    0x180002a67      call  qword [sym.imp.KERNEL32.dll_HeapAlloc] ; [0x1801b8840:8]=0x252090 ; LPVOID HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
│      │    0x180002a6d      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│      │    0x180002a74      lea   r8, qword [var_548h]
│      │    0x180002a79      mov   rdi, rax
│      │    0x180002a7c      mov   qword [var_560h], rbx
│      │    0x180002a81      lea   rax, qword [var_558h]
│      │    0x180002a86      mov   r9d, 0x420                          ; 1056
│      │    0x180002a8c      mov   qword [var_568h], rax
│      │    0x180002a91      mov   edx, 0x322400
│      │    0x180002a96      mov   dword [var_570h], 0x40c             ; [0x40c:4]=-1 ; 1036
│      │    0x180002a9e      mov   qword [var_578h], rdi
│      │    0x180002aa3      call  qword [sym.imp.KERNEL32.dll_DeviceIoControl] ; [0x1801b8818:8]=0x252110 ; BOOL DeviceIoControl(HANDLE hDevice, DWORD dwIoControlCode, LPVOID lpInBuffer, DWORD nInBufferSize, LPVOID lpOutBuffer, DWORD nOutBufferSize, LPDWORD lpBytesReturned, LPOVERLAPPED lpOverlapped)
│      │    0x180002aa9      test  eax, eax
│      │┌─< 0x180002aab      jz    0x180002af8
│      ││   0x180002aad      test  rdi, rdi
│     ┌───< 0x180002ab0      jz    0x180002b11
│     │││   0x180002ab2      mov   ecx, dword [rdi+0x08]
│     │││   0x180002ab5      lea   rax, qword [rdi+0x0c]
│     │││   0x180002ab9      test  ecx, ecx
│    ┌────< 0x180002abb      jz    0x180002af8
│    ││││   0x180002abd      mov   edx, ecx
│    ││││   0x180002abf      mov   r8d, 0x04
│   ┌─────> 0x180002ac5      movzx ecx, word [rax]
│   ╎││││   0x180002ac8      test  cx, cx
│  ┌──────< 0x180002acb      jz    0x180002ad7
│  │╎││││   0x180002acd      cmp   cx, 0x02                            ; 2
│ ┌───────< 0x180002ad1      jnz   0x180002ada
│ ││╎││││   0x180002ad3      mov   ebx, esi
│ ────────< 0x180002ad5      jmp   0x180002ada
│ │└──────> 0x180002ad7      mov   ebx, dword [rax+0x04]
│ │ ╎││││   ; CODE XREF from sym.InsydeDCHU.dll_SetDCHU_Data @ 0x180002ad5
│ └───────> 0x180002ada      movzx ecx, word [rax+0x02]
│   ╎││││   0x180002ade      cmp   r8w, cx
│  ┌──────< 0x180002ae2      jbe   0x180002ae9
│  │╎││││   0x180002ae4      mov   rcx, r8
│ ┌───────< 0x180002ae7      jmp   0x180002aec
│ │└──────> 0x180002ae9      movzx ecx, cx
│ │ ╎││││   ; CODE XREF from sym.InsydeDCHU.dll_SetDCHU_Data @ 0x180002ae7
│ └───────> 0x180002aec      add   rax, r8
│   ╎││││   0x180002aef      add   rax, rcx
│   ╎││││   0x180002af2      sub   rdx, 0x01
│   └─────< 0x180002af6      jnz   0x180002ac5
│    └──└─> 0x180002af8      test  rdi, rdi
│     ││┌─< 0x180002afb      jz    0x180002b11
│     │││   0x180002afd      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│     │││   0x180002b03      mov   r8, rdi
│     │││   0x180002b06      xor   edx, edx
│     │││   0x180002b08      mov   rcx, rax
│     │││   0x180002b0b      call  qword [sym.imp.KERNEL32.dll_HeapFree] ; [0x1801b8880:8]=0x251fd8 ; BOOL HeapFree(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
│     └─└─> 0x180002b11      cmp   dword [0x180263380], 0x00           ; [0x180263380:4]=0
│      │┌─< 0x180002b18      jz    0x180002b31
│      ││   0x180002b1a      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│      ││   0x180002b21      call  qword [sym.imp.KERNEL32.dll_CloseHandle] ; [0x1801b8858:8]=0x252050 ; "P %" ; BOOL CloseHandle(HANDLE hObject)
│      ││   0x180002b27      mov   dword [0x180263380], 0x00           ; [0x180263380:4]=0
│      │└─> 0x180002b31      mov   eax, ebx
│      │    0x180002b33      mov   rbx, qword [var_10h]
│      │    ; CODE XREF from sym.InsydeDCHU.dll_SetDCHU_Data @ 0x180002956
│      └──> 0x180002b3b      mov   rcx, qword [var_28h]
│           0x180002b43      xor   rcx, rsp
│           0x180002b46      call  0x18018ee00
│           0x180002b4b      add   rsp, 0x580
│           0x180002b52      pop   rdi
│           0x180002b53      pop   rsi
│           0x180002b54      pop   rbp
└           0x180002b55      ret
┌ sym.InsydeDCHU.dll_GetDCHU_Data_Buffer(int64_t arg1, int64_t arg2);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; var int64_t var_578h @ stack - 0x578
│           ; var int64_t var_570h @ stack - 0x570
│           ; var int64_t var_568h @ stack - 0x568
│           ; var int64_t var_560h @ stack - 0x560
│           ; var int64_t var_558h @ stack - 0x558
│           ; var int64_t var_458h @ stack - 0x458
│           ; var int64_t var_448h @ stack - 0x448
│           ; var int64_t var_438h @ stack - 0x438
│           ; var int64_t var_434h @ stack - 0x434
│           ; var int64_t var_430h @ stack - 0x430
│           ; var int64_t var_42ch @ stack - 0x42c
│           ; var int64_t var_42ah @ stack - 0x42a
│           ; var int64_t var_426h @ stack - 0x426
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_2h @ stack + 0x2
│           ; var int64_t var_18h @ stack + 0x18
│           0x180002b60      mov   qword [var_18h], rbx
│           0x180002b65      push  rbp
│           0x180002b66      push  rsi
│           0x180002b67      push  rdi
│           0x180002b68      sub   rsp, 0x580
│           0x180002b6f      mov   rax, qword [0x1802568b0]            ; [0x1802568b0:8]=0x2b992ddfa232
│           0x180002b76      xor   rax, rsp
│           0x180002b79      mov   qword [var_28h], rax
│           0x180002b81      mov   rbx, rdx                            ; arg2
│           0x180002b84      mov   esi, ecx                            ; arg1
│           0x180002b86      call  0x180002370
│           0x180002b8b      mov   dword [0x180263374], eax            ; [0x180263374:4]=0
│           0x180002b91      test  eax, eax
│       ┌─< 0x180002b93      js    0x180002d64
│       │   0x180002b99      xor   edx, edx
│       │   0x180002b9b      lea   rcx, qword [var_558h]
│       │   0x180002ba0      mov   r8d, 0x100                          ; 256
│       │   0x180002ba6      call  0x180190a70
│       │   0x180002bab      movups xmm0, xmmword [0x18021d238]        ; [0x18021d238:16]=-1
│       │   0x180002bb2      xor   ebp, ebp
│       │   0x180002bb4      mov   dword [var_434h], 0x4d53445f        ; '_DSM'
│       │                                                              ; [0x4d53445f:4]=-1
│       │   0x180002bbf      mov   eax, 0x104                          ; 260
│       │   0x180002bc4      mov   dword [var_438h], ebp
│       │   0x180002bcb      xor   edx, edx
│       │   0x180002bcd      movaps xmmword [var_448h], xmm0
│       │   0x180002bd5      mov   r8d, 0x400                          ; 1024
│       │   0x180002bdb      mov   dword [var_430h], esi
│       │   0x180002be2      lea   rcx, qword [var_42ah]
│       │   0x180002bea      mov   word [var_42ch], ax
│       │   0x180002bf2      call  0x180190a70
│       │   0x180002bf7      lea   edx, qword [var_2h]
│       │   0x180002bfa      mov   dword [var_42ah], 0x1000002         ; [0x1000002:4]=-1
│       │   0x180002c05      lea   rax, qword [var_426h]
│       │   0x180002c0d      lea   rcx, qword [var_558h]
│      ┌──> 0x180002c12      lea   rax, qword [rax+0x80]
│      ╎│   0x180002c19      movups xmm0, xmmword [rcx]
│      ╎│   0x180002c1c      movups xmm1, xmmword [rcx+0x10]
│      ╎│   0x180002c20      lea   rcx, qword [rcx+0x80]
│      ╎│   0x180002c27      movups xmmword [rax-0x80], xmm0
│      ╎│   0x180002c2b      movups xmm0, xmmword [rcx-0x60]
│      ╎│   0x180002c2f      movups xmmword [rax-0x70], xmm1
│      ╎│   0x180002c33      movups xmm1, xmmword [rcx-0x50]
│      ╎│   0x180002c37      movups xmmword [rax-0x60], xmm0
│      ╎│   0x180002c3b      movups xmm0, xmmword [rcx-0x40]
│      ╎│   0x180002c3f      movups xmmword [rax-0x50], xmm1
│      ╎│   0x180002c43      movups xmm1, xmmword [rcx-0x30]
│      ╎│   0x180002c47      movups xmmword [rax-0x40], xmm0
│      ╎│   0x180002c4b      movups xmm0, xmmword [rcx-0x20]
│      ╎│   0x180002c4f      movups xmmword [rax-0x30], xmm1
│      ╎│   0x180002c53      movups xmm1, xmmword [rcx-0x10]
│      ╎│   0x180002c57      movups xmmword [rax-0x20], xmm0
│      ╎│   0x180002c5b      movups xmmword [rax-0x10], xmm1
│      ╎│   0x180002c5f      sub   rdx, 0x01
│      └──< 0x180002c63      jnz   0x180002c12
│       │   0x180002c65      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│       │   0x180002c6b      mov   edx, 0x08
│       │   0x180002c70      mov   r8d, 0x40c                          ; 1036
│       │   0x180002c76      mov   rcx, rax
│       │   0x180002c79      call  qword [sym.imp.KERNEL32.dll_HeapAlloc] ; [0x1801b8840:8]=0x252090 ; LPVOID HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
│       │   0x180002c7f      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│       │   0x180002c86      lea   r8, qword [var_448h]
│       │   0x180002c8e      mov   rdi, rax
│       │   0x180002c91      mov   qword [var_560h], rbp
│       │   0x180002c96      lea   rax, qword [var_458h]
│       │   0x180002c9e      mov   r9d, 0x420                          ; 1056
│       │   0x180002ca4      mov   qword [var_568h], rax
│       │   0x180002ca9      mov   edx, 0x322400
│       │   0x180002cae      mov   dword [var_570h], 0x40c             ; [0x40c:4]=-1 ; 1036
│       │   0x180002cb6      mov   qword [var_578h], rdi
│       │   0x180002cbb      call  qword [sym.imp.KERNEL32.dll_DeviceIoControl] ; [0x1801b8818:8]=0x252110 ; BOOL DeviceIoControl(HANDLE hDevice, DWORD dwIoControlCode, LPVOID lpInBuffer, DWORD nInBufferSize, LPVOID lpOutBuffer, DWORD nOutBufferSize, LPDWORD lpBytesReturned, LPOVERLAPPED lpOverlapped)
│       │   0x180002cc1      test  eax, eax
│      ┌──< 0x180002cc3      jz    0x180002d64
│      ││   0x180002cc9      test  rdi, rdi
│     ┌───< 0x180002ccc      jz    0x180002d45
│     │││   0x180002cce      lea   r8, qword [rdi+0x0c]
│     │││   0x180002cd2      mov   r9d, ebp
│     │││   0x180002cd5      cmp   dword [rdi+0x08], ebp
│    ┌────< 0x180002cd8      jbe   0x180002d31
│    ││││   0x180002cda      mov   r10d, 0x04
│   ┌─────> 0x180002ce0      cmp   word [r8], 0x02
│  ┌──────< 0x180002ce5      jnz   0x180002d0f
│  │╎││││   0x180002ce7      mov   eax, ebp
│  │╎││││   0x180002ce9      cmp   bp, word [r8+0x02]
│ ┌───────< 0x180002cee      jnb   0x180002d08
│ ────────> 0x180002cf0      mov   ecx, eax
│ ││╎││││   0x180002cf2      inc   eax
│ ││╎││││   0x180002cf4      movzx edx, byte [rcx+r8*1+0x04]
│ ││╎││││   0x180002cfa      mov   byte [rbx], dl
│ ││╎││││   0x180002cfc      inc   rbx
│ ││╎││││   0x180002cff      movzx ecx, word [r8+0x02]
│ ││╎││││   0x180002d04      cmp   eax, ecx
│ ────────< 0x180002d06      jb    0x180002cf0
│ └───────> 0x180002d08      movzx eax, byte [r8+0x04]
│  │╎││││   0x180002d0d      mov   byte [rbx], al
│  └──────> 0x180002d0f      movzx eax, word [r8+0x02]
│   ╎││││   0x180002d14      cmp   r10w, ax
│  ┌──────< 0x180002d18      jbe   0x180002d1f
│  │╎││││   0x180002d1a      mov   rax, r10
│ ┌───────< 0x180002d1d      jmp   0x180002d22
│ │└──────> 0x180002d1f      movzx eax, ax
│ │ ╎││││   ; CODE XREF from sym.InsydeDCHU.dll_GetDCHU_Data_Buffer @ 0x180002d1d
│ └───────> 0x180002d22      add   r8, r10
│   ╎││││   0x180002d25      inc   r9d
│   ╎││││   0x180002d28      add   r8, rax
│   ╎││││   0x180002d2b      cmp   r9d, dword [rdi+0x08]
│   └─────< 0x180002d2f      jb    0x180002ce0
│    └────> 0x180002d31      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│     │││   0x180002d37      mov   r8, rdi
│     │││   0x180002d3a      xor   edx, edx
│     │││   0x180002d3c      mov   rcx, rax
│     │││   0x180002d3f      call  qword [sym.imp.KERNEL32.dll_HeapFree] ; [0x1801b8880:8]=0x251fd8 ; BOOL HeapFree(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
│     └───> 0x180002d45      cmp   dword [0x180263380], ebp            ; [0x180263380:4]=0
│     ┌───< 0x180002d4b      jz    0x180002d60
│     │││   0x180002d4d      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│     │││   0x180002d54      call  qword [sym.imp.KERNEL32.dll_CloseHandle] ; [0x1801b8858:8]=0x252050 ; "P %" ; BOOL CloseHandle(HANDLE hObject)
│     │││   0x180002d5a      mov   dword [0x180263380], ebp            ; [0x180263380:4]=0
│     └───> 0x180002d60      mov   eax, esi
│     ┌───< 0x180002d62      jmp   0x180002d66
│     │└└─> 0x180002d64      xor   eax, eax
│     │     ; CODE XREF from sym.InsydeDCHU.dll_GetDCHU_Data_Buffer @ 0x180002d62
│     └───> 0x180002d66      mov   rcx, qword [var_28h]
│           0x180002d6e      xor   rcx, rsp
│           0x180002d71      call  0x18018ee00
│           0x180002d76      mov   rbx, qword [var_18h]
│           0x180002d7e      add   rsp, 0x580
│           0x180002d85      pop   rdi
│           0x180002d86      pop   rsi
│           0x180002d87      pop   rbp
└           0x180002d88      ret
┌ sym.InsydeDCHU.dll_ReadAppSettings(int64_t arg_30h, int64_t arg_1030h);
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; var int64_t var_1ch @ stack + 0x1c
│           ; arg int64_t arg_30h @ stack + 0x30
│           ; arg int64_t arg_1030h @ stack + 0x1030
│           0x180002d90      push  rbx
│           0x180002d92      push  rbp
│           0x180002d93      push  rsi
│           0x180002d94      push  rdi
│           0x180002d95      push  r14
│           0x180002d97      push  r15
│           0x180002d99      mov   eax, 0x1078
│           0x180002d9e      call  0x18018f8c0
│           0x180002da3      sub   rsp, rax
│           0x180002da6      mov   rax, qword [0x1802568b0]            ; [0x1802568b0:8]=0x2b992ddfa232
│           0x180002dad      xor   rax, rsp
│           0x180002db0      mov   qword [arg_1030h], rax
│           0x180002db8      mov   rbp, r9
│           0x180002dbb      movsxd rsi, r8d
│           0x180002dbe      mov   edi, edx
│           0x180002dc0      mov   ebx, ecx
│           0x180002dc2      call  0x180002370
│           0x180002dc7      mov   dword [0x180263374], eax            ; [0x180263374:4]=0
│           0x180002dcd      test  eax, eax
│       ┌─< 0x180002dcf      js    0x180002e79
│       │   0x180002dd5      mov   r14d, 0x1000
│       │   0x180002ddb      lea   rcx, qword [arg_30h]
│       │   0x180002de0      mov   r8d, r14d
│       │   0x180002de3      xor   edx, edx
│       │   0x180002de5      call  0x180190a70
│       │   0x180002dea      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│       │   0x180002df1      lea   rax, qword [var_10h]
│       │   0x180002df6      xor   r15d, r15d
│       │   0x180002df9      mov   dword [var_10h], r14d
│       │   0x180002dfe      mov   qword [var_8h], r15
│       │   0x180002e03      lea   r8, qword [var_18h]
│       │   0x180002e08      mov   qword [rsp+0x30], rax
│       │   0x180002e0d      mov   edx, 0x32240c
│       │   0x180002e12      lea   rax, qword [arg_30h]
│       │   0x180002e17      mov   dword [rsp+0x28], r14d
│       │   0x180002e1c      lea   r9d, qword [r15+0x0c]
│       │   0x180002e20      mov   qword [rsp+0x20], rax
│       │   0x180002e25      mov   dword [var_18h], r15d
│       │   0x180002e2a      mov   dword [var_1ch], 0x10000000         ; [0x10000000:4]=-1
│       │   0x180002e32      call  qword [sym.imp.KERNEL32.dll_DeviceIoControl] ; [0x1801b8818:8]=0x252110 ; BOOL DeviceIoControl(HANDLE hDevice, DWORD dwIoControlCode, LPVOID lpInBuffer, DWORD nInBufferSize, LPVOID lpOutBuffer, DWORD nOutBufferSize, LPDWORD lpBytesReturned, LPOVERLAPPED lpOverlapped)
│       │   0x180002e38      test  eax, eax
│      ┌──< 0x180002e3a      jz    0x180002e79
│      ││   0x180002e3c      lea   rax, qword [arg_30h]
│      ││   0x180002e41      shl   ebx, 0x08
│      ││   0x180002e44      add   ebx, edi
│      ││   0x180002e46      mov   r8, rsi
│      ││   0x180002e49      movsxd rdx, ebx
│      ││   0x180002e4c      mov   rcx, rbp
│      ││   0x180002e4f      add   rdx, rax
│      ││   0x180002e52      call  0x180190c30
│      ││   0x180002e57      cmp   dword [0x180263380], r15d           ; [0x180263380:4]=0
│     ┌───< 0x180002e5e      jz    0x180002e74
│     │││   0x180002e60      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│     │││   0x180002e67      call  qword [sym.imp.KERNEL32.dll_CloseHandle] ; [0x1801b8858:8]=0x252050 ; "P %" ; BOOL CloseHandle(HANDLE hObject)
│     │││   0x180002e6d      mov   dword [0x180263380], r15d           ; [0x180263380:4]=0
│     └───> 0x180002e74      mov   eax, r14d
│     ┌───< 0x180002e77      jmp   0x180002e7b
│     │└└─> 0x180002e79      xor   eax, eax
│     │     ; CODE XREF from sym.InsydeDCHU.dll_ReadAppSettings @ 0x180002e77
│     └───> 0x180002e7b      mov   rcx, qword [arg_1030h]
│           0x180002e83      xor   rcx, rsp
│           0x180002e86      call  0x18018ee00
│           0x180002e8b      add   rsp, 0x1078
│           0x180002e92      pop   r15
│           0x180002e94      pop   r14
│           0x180002e96      pop   rdi
│           0x180002e97      pop   rsi
│           0x180002e98      pop   rbp
│           0x180002e99      pop   rbx
└           0x180002e9a      ret
┌ sym.InsydeDCHU.dll_WriteAppSettings(int64_t arg_28h, int64_t arg_38h, int64_t arg_1038h, int64_t arg_1068h);
│           ; var int64_t var_8h @ stack + 0x8
│           ; var int64_t var_10h @ stack + 0x10
│           ; var int64_t var_18h @ stack + 0x18
│           ; var int64_t var_20h @ stack + 0x20
│           ; arg int64_t arg_28h @ stack + 0x28
│           ; arg int64_t arg_38h @ stack + 0x38
│           ; arg int64_t arg_1038h @ stack + 0x1038
│           ; arg int64_t arg_1068h @ stack + 0x1068
│           0x180002ea0      mov   qword [var_8h], rbx
│           0x180002ea5      push  rbp
│           0x180002ea6      push  rsi
│           0x180002ea7      push  rdi
│           0x180002ea8      mov   eax, 0x1060
│           0x180002ead      call  0x18018f8c0
│           0x180002eb2      sub   rsp, rax
│           0x180002eb5      mov   rax, qword [0x1802568b0]            ; [0x1802568b0:8]=0x2b992ddfa232
│           0x180002ebc      xor   rax, rsp
│           0x180002ebf      mov   qword [arg_1038h], rax
│           0x180002ec7      mov   rbx, r9
│           0x180002eca      mov   edi, r8d
│           0x180002ecd      mov   esi, edx
│           0x180002ecf      mov   ebp, ecx
│           0x180002ed1      call  0x180002370
│           0x180002ed6      mov   dword [0x180263374], eax            ; [0x180263374:4]=0
│           0x180002edc      test  eax, eax
│       ┌─< 0x180002ede      js    0x180002fcf
│       │   0x180002ee4      movsxd r8, edi
│       │   0x180002ee7      lea   rcx, qword [arg_38h]
│       │   0x180002eec      mov   rdx, rbx
│       │   0x180002eef      call  0x180190c30
│       │   0x180002ef4      mov   eax, ebp
│       │   0x180002ef6      shl   eax, 0x08
│       │   0x180002ef9      add   eax, edi
│       │   0x180002efb      add   eax, esi
│       │   0x180002efd      cmp   eax, 0x1000
│      ┌──< 0x180002f02      jnle  0x180002fcf
│      ││   0x180002f08      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│      ││   0x180002f0e      mov   edx, 0x08
│      ││   0x180002f13      mov   r8d, 0x1008
│      ││   0x180002f19      mov   rcx, rax
│      ││   0x180002f1c      call  qword [sym.imp.KERNEL32.dll_HeapAlloc] ; [0x1801b8840:8]=0x252090 ; LPVOID HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
│      ││   0x180002f22      mov   rbx, rax
│      ││   0x180002f25      test  rax, rax
│     ┌───< 0x180002f28      jz    0x180002fd1
│     │││   0x180002f2e      mov   dword [rax], 0x01
│     │││   0x180002f34      mov   eax, 0x100                          ; 256
│     │││   0x180002f39      movzx ecx, ax
│     │││   0x180002f3c      movzx edx, bp
│     │││   0x180002f3f      imul  edx, ecx
│     │││   0x180002f42      lea   rcx, qword [rbx+0x08]
│     │││   0x180002f46      movzx r8d, di
│     │││   0x180002f4a      mov   word [rbx+0x06], r8w
│     │││   0x180002f4f      add   dx, si
│     │││   0x180002f52      mov   word [rbx+0x04], dx
│     │││   0x180002f56      lea   rdx, qword [arg_38h]
│     │││   0x180002f5b      call  0x180190c30
│     │││   0x180002f60      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│     │││   0x180002f67      lea   rax, qword [arg_28h]
│     │││   0x180002f6c      xor   edi, edi
│     │││   0x180002f6e      mov   r9d, 0x1008
│     │││   0x180002f74      mov   qword [var_20h], rdi
│     │││   0x180002f79      mov   r8, rbx
│     │││   0x180002f7c      mov   qword [var_18h], rax
│     │││   0x180002f81      mov   edx, 0x32240c
│     │││   0x180002f86      mov   dword [var_10h], edi
│     │││   0x180002f8a      mov   qword [var_8h], rdi
│     │││   0x180002f8f      call  qword [sym.imp.KERNEL32.dll_DeviceIoControl] ; [0x1801b8818:8]=0x252110 ; BOOL DeviceIoControl(HANDLE hDevice, DWORD dwIoControlCode, LPVOID lpInBuffer, DWORD nInBufferSize, LPVOID lpOutBuffer, DWORD nOutBufferSize, LPDWORD lpBytesReturned, LPOVERLAPPED lpOverlapped)
│     │││   0x180002f95      test  eax, eax
│    ┌────< 0x180002f97      jz    0x180002fcf
│    ││││   0x180002f99      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b8820:8]=0x2520fe ; HANDLE GetProcessHeap(void)
│    ││││   0x180002f9f      mov   r8, rbx
│    ││││   0x180002fa2      xor   edx, edx
│    ││││   0x180002fa4      mov   rcx, rax
│    ││││   0x180002fa7      call  qword [sym.imp.KERNEL32.dll_HeapFree] ; [0x1801b8880:8]=0x251fd8 ; BOOL HeapFree(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
│    ││││   0x180002fad      cmp   dword [0x180263380], edi            ; [0x180263380:4]=0
│   ┌─────< 0x180002fb3      jz    0x180002fc8
│   │││││   0x180002fb5      mov   rcx, qword [0x180263388]            ; [0x180263388:8]=0
│   │││││   0x180002fbc      call  qword [sym.imp.KERNEL32.dll_CloseHandle] ; [0x1801b8858:8]=0x252050 ; "P %" ; BOOL CloseHandle(HANDLE hObject)
│   │││││   0x180002fc2      mov   dword [0x180263380], edi            ; [0x180263380:4]=0
│   └─────> 0x180002fc8      mov   eax, 0x01
│   ┌─────< 0x180002fcd      jmp   0x180002fd1
│   │└─└└─> 0x180002fcf      xor   eax, eax
│   │ │     ; CODE XREF from sym.InsydeDCHU.dll_WriteAppSettings @ 0x180002fcd
│   └─└───> 0x180002fd1      mov   rcx, qword [arg_1038h]
│           0x180002fd9      xor   rcx, rsp
│           0x180002fdc      call  0x18018ee00
│           0x180002fe1      mov   rbx, qword [arg_1068h]
│           0x180002fe9      add   rsp, 0x1060
│           0x180002ff0      pop   rdi
│           0x180002ff1      pop   rsi
│           0x180002ff2      pop   rbp
└           0x180002ff3      ret
