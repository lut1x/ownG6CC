┌ sym.InsydeDCHU.dll_SetDCHU_DataEx(int64_t arg1, int64_t arg2, int64_t arg3, int64_t arg4);
│           ; arg int64_t arg1 @ rcx
│           ; arg int64_t arg2 @ rdx
│           ; arg int64_t arg3 @ r8
│           ; arg int64_t arg4 @ r9
│           ; var int64_t var_588h @ stack - 0x588
│           ; var int64_t var_580h @ stack - 0x580
│           ; var int64_t var_578h @ stack - 0x578
│           ; var int64_t var_570h @ stack - 0x570
│           ; var int64_t var_568h @ stack - 0x568
│           ; var int64_t var_558h @ stack - 0x558
│           ; var int64_t var_548h @ stack - 0x548
│           ; var int64_t var_544h @ stack - 0x544
│           ; var int64_t var_540h @ stack - 0x540
│           ; var int64_t var_53ch @ stack - 0x53c
│           ; var int64_t var_53ah @ stack - 0x53a
│           ; var int64_t var_536h @ stack - 0x536
│           ; var int64_t var_138h @ stack - 0x138
│           ; var int64_t var_38h @ stack - 0x38
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_10h @ stack + 0x10
│           0x180002ae0      push  rbx
│           0x180002ae2      push  rbp
│           0x180002ae3      push  rsi
│           0x180002ae4      push  rdi
│           0x180002ae5      sub   rsp, 0x588
│           0x180002aec      mov   rax, qword [0x180236920]            ; [0x180236920:8]=0x2b992ddfa232
│           0x180002af3      xor   rax, rsp
│           0x180002af6      mov   qword [var_38h], rax
│           0x180002afe      mov   rbx, r9                             ; arg4
│           0x180002b01      movsxd rsi, r8d                           ; arg3
│           0x180002b04      mov   rdi, rdx                            ; arg2
│           0x180002b07      mov   ebp, ecx                            ; arg1
│           0x180002b09      call  0x180002330
│           0x180002b0e      mov   dword [0x1802433a4], eax            ; [0x1802433a4:4]=0
│           0x180002b14      test  eax, eax
│       ┌─< 0x180002b16      jns   0x180002b1f
│       │   0x180002b18      xor   eax, eax
│      ┌──< 0x180002b1a      jmp   0x180002d27
│      │└─> 0x180002b1f      mov   qword [var_10h], r14
│      │    0x180002b27      lea   rcx, qword [var_138h]
│      │    0x180002b2f      xor   edx, edx
│      │    0x180002b31      mov   qword [var_28h], r15
│      │    0x180002b39      mov   r8d, 0x100                          ; 256
│      │    0x180002b3f      call  0x18018c580
│      │    0x180002b44      movups xmm0, xmmword [0x180208658]        ; [0x180208658:16]=-1
│      │    0x180002b4b      mov   eax, 0x104                          ; 260
│      │    0x180002b50      mov   dword [var_544h], 0x4d53445f        ; '_DSM'
│      │                                                               ; [0x4d53445f:4]=-1
│      │    0x180002b58      xor   r14d, r14d
│      │    0x180002b5b      mov   dword [var_540h], ebp
│      │    0x180002b5f      xor   edx, edx
│      │    0x180002b61      movaps xmmword [var_558h], xmm0
│      │    0x180002b66      mov   r8d, 0x400                          ; 1024
│      │    0x180002b6c      mov   dword [var_548h], r14d
│      │    0x180002b71      lea   rcx, qword [var_53ah]
│      │    0x180002b76      mov   word [var_53ch], ax
│      │    0x180002b7b      call  0x18018c580
│      │    0x180002b80      mov   r8, rsi
│      │    0x180002b83      test  esi, esi
│      │┌─< 0x180002b85      jle   0x180002b97
│      ││   0x180002b87      mov   rdx, rdi
│      ││   0x180002b8a      lea   rcx, qword [var_138h]
│      ││   0x180002b92      call  0x18018c740
│      │└─> 0x180002b97      mov   r15, qword [var_28h]
│      │    0x180002b9f      lea   rax, qword [var_536h]
│      │    0x180002ba4      mov   edx, 0x02
│      │    0x180002ba9      mov   dword [var_53ah], 0x1000002         ; [0x1000002:4]=-1
│      │    0x180002bb1      lea   rcx, qword [var_138h]
│      │    0x180002bb9      nop   dword [rax], eax
│      │┌─> 0x180002bc0      lea   rax, qword [rax+0x80]
│      │╎   0x180002bc7      movups xmm0, xmmword [rcx]
│      │╎   0x180002bca      movups xmm1, xmmword [rcx+0x10]
│      │╎   0x180002bce      lea   rcx, qword [rcx+0x80]
│      │╎   0x180002bd5      movups xmmword [rax-0x80], xmm0
│      │╎   0x180002bd9      movups xmm0, xmmword [rcx-0x60]
│      │╎   0x180002bdd      movups xmmword [rax-0x70], xmm1
│      │╎   0x180002be1      movups xmm1, xmmword [rcx-0x50]
│      │╎   0x180002be5      movups xmmword [rax-0x60], xmm0
│      │╎   0x180002be9      movups xmm0, xmmword [rcx-0x40]
│      │╎   0x180002bed      movups xmmword [rax-0x50], xmm1
│      │╎   0x180002bf1      movups xmm1, xmmword [rcx-0x30]
│      │╎   0x180002bf5      movups xmmword [rax-0x40], xmm0
│      │╎   0x180002bf9      movups xmm0, xmmword [rcx-0x20]
│      │╎   0x180002bfd      movups xmmword [rax-0x30], xmm1
│      │╎   0x180002c01      movups xmm1, xmmword [rcx-0x10]
│      │╎   0x180002c05      movups xmmword [rax-0x20], xmm0
│      │╎   0x180002c09      movups xmmword [rax-0x10], xmm1
│      │╎   0x180002c0d      sub   rdx, 0x01
│      │└─< 0x180002c11      jnz   0x180002bc0
│      │    0x180002c13      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b3818:8]=0x23196e ; "n\U00000019#" ; HANDLE GetProcessHeap(void)
│      │    0x180002c19      mov   edx, 0x08
│      │    0x180002c1e      mov   r8d, 0x40c                          ; 1036
│      │    0x180002c24      mov   rcx, rax
│      │    0x180002c27      call  qword [sym.imp.KERNEL32.dll_HeapAlloc] ; [0x1801b3838:8]=0x231900 ; LPVOID HeapAlloc(HANDLE hHeap, DWORD dwFlags, SIZE_T dwBytes)
│      │    0x180002c2d      mov   rcx, qword [0x1802433b8]            ; [0x1802433b8:8]=0
│      │    0x180002c34      lea   r8, qword [var_558h]
│      │    0x180002c39      mov   rdi, rax
│      │    0x180002c3c      mov   qword [var_570h], r14
│      │    0x180002c41      lea   rax, qword [var_568h]
│      │    0x180002c46      mov   r9d, 0x420                          ; 1056
│      │    0x180002c4c      mov   qword [var_578h], rax
│      │    0x180002c51      mov   edx, 0x322400
│      │    0x180002c56      mov   dword [var_580h], 0x40c             ; [0x40c:4]=-1 ; 1036
│      │    0x180002c5e      mov   qword [var_588h], rdi
│      │    0x180002c63      call  qword [sym.imp.KERNEL32.dll_DeviceIoControl] ; [0x1801b3810:8]=0x231980 ; BOOL DeviceIoControl(HANDLE hDevice, DWORD dwIoControlCode, LPVOID lpInBuffer, DWORD nInBufferSize, LPVOID lpOutBuffer, DWORD nOutBufferSize, LPDWORD lpBytesReturned, LPOVERLAPPED lpOverlapped)
│      │    0x180002c69      test  rdi, rdi
│      │┌─< 0x180002c6c      jz    0x180002d00
│      ││   0x180002c72      test  eax, eax
│     ┌───< 0x180002c74      jz    0x180002cec
│     │││   0x180002c76      lea   r8, qword [rdi+0x0c]
│     │││   0x180002c7a      mov   r9d, r14d
│     │││   0x180002c7d      cmp   dword [rdi+0x08], r14d
│    ┌────< 0x180002c81      jbe   0x180002cec
│    ││││   0x180002c83      mov   r10d, 0x04
│    ││││   0x180002c89      nop   dword [rax], eax
│   ┌─────> 0x180002c90      movzx eax, word [r8]
│   ╎││││   0x180002c94      test  ax, ax
│  ┌──────< 0x180002c97      jz    0x180002ccf
│  │╎││││   0x180002c99      cmp   ax, 0x02                            ; 2
│ ┌───────< 0x180002c9d      jnz   0x180002ccf
│ ││╎││││   0x180002c9f      mov   eax, r14d
│ ││╎││││   0x180002ca2      cmp   r14w, word [r8+0x02]
│ ────────< 0x180002ca7      jnb   0x180002cc8
│ ││╎││││   0x180002ca9      nop   dword [rax], eax
│ ────────> 0x180002cb0      mov   ecx, eax
│ ││╎││││   0x180002cb2      inc   eax
│ ││╎││││   0x180002cb4      movzx edx, byte [rcx+r8*1+0x04]
│ ││╎││││   0x180002cba      mov   byte [rbx], dl
│ ││╎││││   0x180002cbc      inc   rbx
│ ││╎││││   0x180002cbf      movzx ecx, word [r8+0x02]
│ ││╎││││   0x180002cc4      cmp   eax, ecx
│ ────────< 0x180002cc6      jb    0x180002cb0
│ ────────> 0x180002cc8      movzx eax, byte [r8+0x04]
│ ││╎││││   0x180002ccd      mov   byte [rbx], al
│ └└──────> 0x180002ccf      movzx eax, word [r8+0x02]
│   ╎││││   0x180002cd4      cmp   r10w, ax
│  ┌──────< 0x180002cd8      jbe   0x180002cdd
│  │╎││││   0x180002cda      mov   rax, r10
│  └──────> 0x180002cdd      add   r8, r10
│   ╎││││   0x180002ce0      inc   r9d
│   ╎││││   0x180002ce3      add   r8, rax
│   ╎││││   0x180002ce6      cmp   r9d, dword [rdi+0x08]
│   └─────< 0x180002cea      jb    0x180002c90
│    └└───> 0x180002cec      call  qword [sym.imp.KERNEL32.dll_GetProcessHeap] ; [0x1801b3818:8]=0x23196e ; "n\U00000019#" ; HANDLE GetProcessHeap(void)
│      ││   0x180002cf2      mov   r8, rdi
│      ││   0x180002cf5      xor   edx, edx
│      ││   0x180002cf7      mov   rcx, rax
│      ││   0x180002cfa      call  qword [sym.imp.KERNEL32.dll_HeapFree] ; [0x1801b3878:8]=0x231848 ; "H\U00000018#" ; BOOL HeapFree(HANDLE hHeap, DWORD dwFlags, LPVOID lpMem)
│      │└─> 0x180002d00      cmp   dword [0x1802433b0], r14d           ; [0x1802433b0:4]=0
│      │┌─< 0x180002d07      jz    0x180002d1d
│      ││   0x180002d09      mov   rcx, qword [0x1802433b8]            ; [0x1802433b8:8]=0
│      ││   0x180002d10      call  qword [sym.imp.KERNEL32.dll_CloseHandle] ; [0x1801b3850:8]=0x2318c0 ; BOOL CloseHandle(HANDLE hObject)
│      ││   0x180002d16      mov   dword [0x1802433b0], r14d           ; [0x1802433b0:4]=0
│      │└─> 0x180002d1d      mov   r14, qword [var_10h]
│      │    0x180002d25      mov   eax, ebp
│      │    ; CODE XREF from sym.InsydeDCHU.dll_SetDCHU_DataEx @ 0x180002b1a
│      └──> 0x180002d27      mov   rcx, qword [var_38h]
│           0x180002d2f      xor   rcx, rsp
│           0x180002d32      call  0x18018a810
│           0x180002d37      add   rsp, 0x588
│           0x180002d3e      pop   rdi
│           0x180002d3f      pop   rsi
│           0x180002d40      pop   rbp
│           0x180002d41      pop   rbx
└           0x180002d42      ret
