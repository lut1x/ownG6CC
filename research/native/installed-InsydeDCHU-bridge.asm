┌ fcn.180002370();
│           ; var int64_t var_28h @ stack - 0x28
│           ; var int64_t var_20h @ stack - 0x20
│           ; var int64_t var_18h @ stack - 0x18
│           0x180002370      push  rbx
│           0x180002372      sub   rsp, 0x40
│           0x180002376      lea   rcx, qword [0x180263390]
│           0x18000237d      mov   dword [0x180263380], 0x00           ; [0x180263380:4]=0
│           0x180002387      call  fcn.180002400
│           0x18000238c      mov   ebx, eax
│           0x18000238e      test  eax, eax
│       ┌─< 0x180002390      js    0x1800023f5
│       │   0x180002392      xor   r9d, r9d
│       │   0x180002395      mov   qword [var_18h], 0x00
│       │   0x18000239e      mov   dword [var_20h], 0x40000080         ; [0x40000080:4]=-1
│       │   0x1800023a6      lea   rcx, qword [0x180263390]
│       │   0x1800023ad      mov   edx, 0xc0000000
│       │   0x1800023b2      mov   dword [var_28h], 0x03
│       │   0x1800023ba      lea   r8d, qword [r9+0x03]
│       │   0x1800023be      call  qword [sym.imp.KERNEL32.dll_CreateFileW] ; [0x1801b8878:8]=0x252018 ; HANDLE CreateFileW(LPCWSTR lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, DWORD dwFlagsAndAttributes, HANDLE hTemplateFile)
│       │   0x1800023c4      mov   qword [0x180263388], rax            ; [0x180263388:8]=0
│       │   0x1800023cb      cmp   rax, 0xffffffffffffffff
│      ┌──< 0x1800023cf      jnz   0x1800023e9
│      ││   0x1800023d1      call  qword [sym.imp.KERNEL32.dll_GetLastError] ; [0x1801b8868:8]=0x252032 ; "2 %" ; DWORD GetLastError(void)
│      ││   0x1800023d7      test  eax, eax
│     ┌───< 0x1800023d9      jle   0x1800023f5
│     │││   0x1800023db      movzx eax, ax
│     │││   0x1800023de      or    eax, 0x80070000
│     │││   0x1800023e3      add   rsp, 0x40
│     │││   0x1800023e7      pop   rbx
│     │││   0x1800023e8      ret
│     │└──> 0x1800023e9      mov   dword [0x180263380], 0x01           ; [0x180263380:4]=0
│     │ │   0x1800023f3      mov   eax, ebx
│     └─└─> 0x1800023f5      add   rsp, 0x40
│           0x1800023f9      pop   rbx
└           0x1800023fa      ret
┌ fcn.180002610(int64_t arg1);
│           ; arg int64_t arg1 @ rcx
│           0x180002610      mov   eax, dword [rcx+0x14c]              ; arg1
│           0x180002616      and   eax, 0x04
└           0x180002619      ret
