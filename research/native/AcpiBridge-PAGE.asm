            ;-- section.PAGE:
            0x140006000      push  rbp                                 ; [04] -r-x section size 8192 named PAGE
            0x140006002      push  rbx
            0x140006003      push  rsi
            0x140006004      push  rdi
            0x140006005      push  r12
            0x140006007      push  r13
            0x140006009      push  r14
            0x14000600b      push  r15
            0x14000600d      lea   rbp, qword [rsp-0x1f]
            0x140006012      sub   rsp, 0xf8
            0x140006019      mov   rax, qword [0x140004040]            ; [0x140004040:8]=0x2b992ddfa232
            0x140006020      xor   rax, rsp
            0x140006023      mov   qword [rbp+0x07], rax
            0x140006027      mov   r15, r9
            0x14000602a      mov   qword [rbp-0x79], r8
            0x14000602e      mov   rsi, rdx
            0x140006031      mov   rbx, rcx
            0x140006034      lea   rax, qword [0x140004030]            ; "0@"
            0x14000603b      xor   edi, edi
            0x14000603d      cmp   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
            0x140006044      lea   rdx, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
        ┌─< 0x14000604b      jz    0x140006073
        │   0x14000604d      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x140006054      cmp   word [rcx+0x48], di
       ┌──< 0x140006058      jz    0x140006073
       ││   0x14000605a      mov   rcx, qword [rcx+0x40]
       ││   0x14000605e      lea   r8d, qword [rdi+0x05]
       ││   0x140006062      mov   qword [rsp+0x20], rdx
       ││   0x140006067      lea   r9d, qword [rdi+0x1e]
       ││   0x14000606b      mov   dl, r8b
       ││   0x14000606e      call  0x140001374
       └└─> 0x140006073      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x14000607a      mov   rdx, rbx
            0x14000607d      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006084      mov   rax, qword [rax+0x4e8]
            0x14000608b      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006091      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006098      mov   r14, rax
            0x14000609b      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
            0x1400060a2      mov   rdx, r14
            0x1400060a5      mov   rax, qword [rcx+0x650]
            0x1400060ac      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x1400060b3      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x1400060b9      movzx eax, word [rsi+0x1c]
            0x1400060bd      mov   ecx, 0x04
            0x1400060c2      mov   qword [rsp+0x58], rdi
            0x1400060c7      mov   rbx, rdi
            0x1400060ca      cmp   cx, ax
        ┌─< 0x1400060cd      jbe   0x1400060d1
        │   0x1400060cf      mov   eax, ecx
        └─> 0x1400060d1      lea   r13, qword [rax+0x28]
            0x1400060d5      xorps xmm0, xmm0
            0x1400060d8      xor   eax, eax
            0x1400060da      lea   rcx, qword [rsp+0x50]
            0x1400060df      mov   qword [rsp+0x30], rcx
            0x1400060e4      lea   r12, qword [r13+0x10]
            0x1400060e8      mov   qword [rbp-0x11], rax
            0x1400060ec      lea   rcx, qword [rsp+0x58]
            0x1400060f1      movups xmmword [rbp-0x31], xmm0
            0x1400060f5      mov   eax, 0x01
            0x1400060fa      mov   qword [rsp+0x28], rcx
            0x1400060ff      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006106      lea   rdx, qword [rbp-0x41]
            0x14000610a      mov   dword [rbp-0x29], eax
            0x14000610d      xor   r9d, r9d
            0x140006110      mov   dword [rbp-0x25], eax
            0x140006113      mov   r8d, 0x200                          ; 512
            0x140006119      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006120      movups xmmword [rbp-0x41], xmm0
            0x140006124      mov   dword [rbp-0x41], 0x38              ; '8' ; 56
            0x14000612b      movups xmmword [rbp-0x21], xmm0
            0x14000612f      mov   qword [rbp-0x21], r14
            0x140006133      mov   rax, qword [rax+0x600]
            0x14000613a      mov   qword [rsp+0x20], r12
            0x14000613f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006145      mov   edi, eax
            0x140006147      test  eax, eax
        ┌─< 0x140006149      jns   0x14000619e
        │   0x14000614b      lea   rsi, qword [0x140004030]            ; "0@"
        │   0x140006152      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
        │   0x140006159      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
       ┌──< 0x140006160      jz    0x140006196
       ││   0x140006162      lfence
       ││   0x140006165      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x14000616c      mov   r9d, 0x1f                           ; 31
       ││   0x140006172      mov   dword [rsp+0x38], eax
       ││   0x140006176      mov   qword [rsp+0x30], r12
       ││   0x14000617b      mov   qword [rsp+0x28], r14
       ││   0x140006180      mov   rcx, qword [rcx+0x40]
       ││   0x140006184      lea   edx, qword [r9-0x1d]
       ││   0x140006188      lea   r8d, qword [r9-0x1a]
       ││   0x14000618c      mov   qword [rsp+0x20], r15
       ││   0x140006191      call  0x140001b08
       └──> 0x140006196      xor   r13d, r13d
       ┌──< 0x140006199      jmp   0x1400064c0
       │└─> 0x14000619e      mov   rcx, qword [rsp+0x50]
       │    0x1400061a3      mov   r8, r12
       │    0x1400061a6      xor   edx, edx
       │    0x1400061a8      call  0x140002900
       │    0x1400061ad      mov   rax, qword [rsp+0x50]
       │    0x1400061b2      mov   edi, 0x04
       │    0x1400061b7      mov   dword [rax], 0x43696541             ; 'AeiC'
       │                                                               ; [0x43696541:4]=-1
       │    0x1400061bd      mov   rax, qword [rsp+0x50]
       │    0x1400061c2      mov   dword [rax+0x08], r13d
       │    0x1400061c6      mov   rax, qword [rsp+0x50]
       │    0x1400061cb      mov   dword [rax+0x0c], edi
       │    0x1400061ce      mov   rax, qword [rsp+0x50]
       │    0x1400061d3      mov   ecx, dword [rsi+0x14]
       │    0x1400061d6      mov   dword [rax+0x04], ecx
       │    0x1400061d9      lea   rax, qword [0x140004030]            ; "0@"
       │    0x1400061e0      cmp   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
       │┌─< 0x1400061e7      jz    0x140006223
       ││   0x1400061e9      mov   eax, dword [rsi+0x18]
       ││   0x1400061ec      lea   r9d, qword [rdi+0x1c]
       ││   0x1400061f0      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x1400061f7      lea   r8d, qword [rdi+0x01]
       ││   0x1400061fb      mov   dword [rsp+0x38], eax
       ││   0x1400061ff      mov   dl, dil
       ││   0x140006202      mov   eax, dword [rsi+0x10]
       ││   0x140006205      mov   dword [rsp+0x30], eax
       ││   0x140006209      lea   rax, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
       ││   0x140006210      mov   rcx, qword [rcx+0x40]
       ││   0x140006214      mov   qword [rsp+0x28], r14
       ││   0x140006219      mov   qword [rsp+0x20], rax
       ││   0x14000621e      call  0x140001740
       │└─> 0x140006223      mov   rbx, qword [rsp+0x50]
       │    0x140006228      mov   r12d, 0x02
       │    0x14000622e      mov   r8, rsi
       │    0x140006231      lea   eax, qword [r12+0x0e]
       │    0x140006236      mov   dword [rbx+0x10], 0x100002          ; [0x100002:4]=-1
       │    0x14000623d      mov   r9d, eax
       │    0x140006240      lea   rcx, qword [rbx+0x14]
       │    0x140006244      mov   edx, eax
       │    0x140006246      call  0x140001ee0
       │    0x14000624b      movzx eax, word [rbx+0x12]
       │    0x14000624f      mov   rcx, rdi
       │    0x140006252      cmp   di, ax
       │┌─< 0x140006255      jnbe  0x140006259
       ││   0x140006257      mov   ecx, eax
       │└─> 0x140006259      mov   dword [rbx+rcx*1+0x14], 0x40000     ; [0x40000:4]=-1
       │    0x140006261      xor   r13d, r13d
       │    0x140006264      mov   eax, dword [rsi+0x10]
       │    0x140006267      mov   dword [rbx+rcx*1+0x18], eax
       │    0x14000626b      mov   dword [rbx+rcx*1+0x1c], 0x40000     ; [0x40000:4]=-1
       │    0x140006273      mov   eax, dword [rsi+0x18]
       │    0x140006276      mov   dword [rbx+rcx*1+0x20], eax
       │    0x14000627a      mov   word [rbx+rcx*1+0x24], di
       │    0x14000627f      movzx eax, word [rsi+0x1c]
       │    0x140006283      mov   word [rbx+rcx*1+0x26], ax
       │    0x140006288      test  ax, ax
       │┌─< 0x14000628b      jz    0x1400062a2
       ││   0x14000628d      add   rcx, 0x28                           ; 40
       ││   0x140006291      lea   r8, qword [rsi+0x1e]
       ││   0x140006295      add   rcx, rbx
       ││   0x140006298      mov   edx, eax
       ││   0x14000629a      mov   r9d, eax
       ││   0x14000629d      call  0x140001ee0
       │└─> 0x1400062a2      cmp   r15, rdi
       │    0x1400062a5      mov   r8d, 0x636c654f                     ; 'Oelc'
       │    0x1400062ab      mov   ecx, 0x600                          ; 1536
       │    0x1400062b0      cmovb r15, rdi
       │    0x1400062b4      add   r15, 0x10                           ; 16
       │    0x1400062b8      mov   rdx, r15
       │    0x1400062bb      call  qword [sym.imp.ntoskrnl.exe_ExAllocatePoolWithTag] ; [0x140003098:8]=0x8326 ; "&\x83"
       │    0x1400062c1      mov   rbx, rax
       │    0x1400062c4      test  rax, rax
       │┌─< 0x1400062c7      jnz   0x140006318
       ││   0x1400062c9      mov   edi, 0xc000009a
       ││   0x1400062ce      lea   rsi, qword [0x140004030]            ; "0@"
       ││   0x1400062d5      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
      ┌───< 0x1400062dc      jz    0x1400064b9
      │││   0x1400062e2      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
      │││   0x1400062e9      lea   r9d, qword [rax+0x21]
      │││   0x1400062ed      mov   qword [rsp+0x30], r15
      │││   0x1400062f2      lea   r8d, qword [rax+0x05]
      │││   0x1400062f6      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
      │││   0x1400062fd      mov   qword [rsp+0x28], r14
      │││   0x140006302      mov   dl, r12b
      │││   0x140006305      mov   qword [rsp+0x20], r15
      │││   0x14000630a      mov   rcx, qword [rcx+0x40]
      │││   0x14000630e      call  0x1400019f0
     ┌────< 0x140006313      jmp   0x1400064c0
     │││└─> 0x140006318      mov   r8, r15
     │││    0x14000631b      xor   edx, edx
     │││    0x14000631d      mov   rcx, rbx
     │││    0x140006320      call  0x140002900
     │││    0x140006325      mov   rax, qword [rsp+0x58]
     │││    0x14000632a      mov   ecx, 0x03
     │││    0x14000632f      mov   qword [rbp-0x51], rax
     │││    0x140006333      mov   rdx, r14
     │││    0x140006336      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
     │││    0x14000633d      mov   dword [rbp-0x05], ecx
     │││    0x140006340      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
     │││    0x140006347      mov   qword [rbp-0x59], 0x03
     │││    0x14000634f      mov   qword [rbp-0x49], r13
     │││    0x140006353      mov   qword [rbp-0x71], 0x01
     │││    0x14000635b      mov   dword [rbp-0x5d], r13d
     │││    0x14000635f      mov   qword [rbp-0x69], rbx
     │││    0x140006363      mov   dword [rbp-0x61], r15d
     │││    0x140006367      mov   dword [rbp-0x09], 0x10              ; 16
     │││    0x14000636e      mov   qword [rbp-0x01], 0xfffffffffe363c80
     │││    0x140006376      mov   rax, qword [rax+0x150]
     │││    0x14000637d      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
     │││    0x140006383      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
     │││    0x14000638a      mov   r9d, 0x32c004
     │││    0x140006390      mov   qword [rsp+0x38], r13
     │││    0x140006395      mov   rdx, rax
     │││    0x140006398      xor   r8d, r8d
     │││    0x14000639b      mov   r10, qword [rcx+0x5e0]
     │││    0x1400063a2      lea   rcx, qword [rbp-0x09]
     │││    0x1400063a6      mov   qword [rsp+0x30], rcx
     │││    0x1400063ab      mov   rax, r10
     │││    0x1400063ae      lea   rcx, qword [rbp-0x71]
     │││    0x1400063b2      mov   qword [rsp+0x28], rcx
     │││    0x1400063b7      lea   rcx, qword [rbp-0x59]
     │││    0x1400063bb      mov   qword [rsp+0x20], rcx
     │││    0x1400063c0      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
     │││    0x1400063c7      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
     │││    0x1400063cd      mov   edi, eax
     │││    0x1400063cf      test  eax, eax
     │││┌─< 0x1400063d1      jns   0x140006421
     ││││   0x1400063d3      lea   rsi, qword [0x140004030]            ; "0@"
     ││││   0x1400063da      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
     ││││   0x1400063e1      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
    ┌─────< 0x1400063e8      jz    0x1400064c0
    │││││   0x1400063ee      lfence
    │││││   0x1400063f1      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
    │││││   0x1400063f8      mov   r9d, 0x22                           ; '"' ; 34
    │││││   0x1400063fe      mov   dword [rsp+0x30], eax
    │││││   0x140006402      mov   dl, r12b
    │││││   0x140006405      mov   qword [rsp+0x28], r14
    │││││   0x14000640a      mov   qword [rsp+0x20], r15
    │││││   0x14000640f      mov   rcx, qword [rcx+0x40]
    │││││   0x140006413      lea   r8d, qword [r9-0x1d]
    │││││   0x140006417      call  0x14000152c
   ┌──────< 0x14000641c      jmp   0x1400064c0
   │││││└─> 0x140006421      lea   rsi, qword [0x140004030]            ; "0@"
   │││││    0x140006428      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
   │││││    0x14000642f      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
   │││││┌─< 0x140006436      jz    0x140006477
   ││││││   0x140006438      lfence
   ││││││   0x14000643b      mov   eax, dword [rbx+0x08]
   ││││││   0x14000643e      mov   r9d, 0x23                           ; '#' ; 35
   ││││││   0x140006444      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
   ││││││   0x14000644b      mov   dword [rsp+0x40], eax
   ││││││   0x14000644f      mov   eax, dword [rbx+0x04]
   ││││││   0x140006452      mov   dword [rsp+0x38], eax
   ││││││   0x140006456      lea   edx, qword [r9-0x1f]
   ││││││   0x14000645a      mov   eax, dword [rbx]
   ││││││   0x14000645c      lea   r8d, qword [r9-0x1e]
   ││││││   0x140006460      mov   rcx, qword [rcx+0x40]
   ││││││   0x140006464      mov   dword [rsp+0x30], eax
   ││││││   0x140006468      mov   qword [rsp+0x28], r14
   ││││││   0x14000646d      mov   qword [rsp+0x20], r15
   ││││││   0x140006472      call  0x140001884
   │││││└─> 0x140006477      cmp   dword [rbx], 0x426f6541             ; 'AeoB'
   │││││┌─< 0x14000647d      jz    0x1400064c0
   ││││││   0x14000647f      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
  ┌───────< 0x140006486      jz    0x1400064b2
  │││││││   0x140006488      lfence
  │││││││   0x14000648b      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
  │││││││   0x140006492      mov   r9d, 0x24                           ; '$' ; 36
  │││││││   0x140006498      mov   qword [rsp+0x28], r14
  │││││││   0x14000649d      mov   dl, r12b
  │││││││   0x1400064a0      mov   qword [rsp+0x20], r15
  │││││││   0x1400064a5      mov   rcx, qword [rcx+0x40]
  │││││││   0x1400064a9      lea   r8d, qword [r9-0x1f]
  │││││││   0x1400064ad      call  0x14000164c
  └───────> 0x1400064b2      mov   edi, 0xc014000f
  ┌───────< 0x1400064b7      jmp   0x1400064c0
  ││││└───> 0x1400064b9      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
  └└└└─└└─> 0x1400064c0      mov   rdx, qword [rsp+0x58]
            0x1400064c5      test  rdx, rdx
        ┌─< 0x1400064c8      jz    0x1400064e5
        │   0x1400064ca      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
        │   0x1400064d1      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
        │   0x1400064d8      mov   rax, qword [rax+0x680]
        │   0x1400064df      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
        └─> 0x1400064e5      test  edi, edi
        ┌─< 0x1400064e7      js    0x1400064f7
        │   0x1400064e9      mov   rax, qword [rbp-0x79]
        │   0x1400064ed      test  rax, rax
       ┌──< 0x1400064f0      jz    0x1400064f7
       ││   0x1400064f2      mov   qword [rax], rbx
      ┌───< 0x1400064f5      jmp   0x14000650a
      │└└─> 0x1400064f7      test  rbx, rbx
      │ ┌─< 0x1400064fa      jz    0x14000650a
      │ │   0x1400064fc      mov   edx, 0x636c654f                     ; 'Oelc'
      │ │   0x140006501      mov   rcx, rbx
      │ │   0x140006504      call  qword [sym.imp.ntoskrnl.exe_ExFreePoolWithTag] ; [0x140003090:8]=0x833e ; ">\x83"
      └─└─> 0x14000650a      cmp   qword [0x140004030], rsi            ; [0x140004030:8]=0x140004030
        ┌─< 0x140006511      jz    0x14000653c
        │   0x140006513      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x14000651a      cmp   word [rcx+0x48], r13w
       ┌──< 0x14000651f      jz    0x14000653c
       ││   0x140006521      mov   rcx, qword [rcx+0x40]
       ││   0x140006525      mov   r9d, 0x25                           ; '%' ; 37
       ││   0x14000652b      mov   qword [rsp+0x20], r15
       ││   0x140006530      lea   r8d, qword [r9-0x20]
       ││   0x140006534      mov   dl, r8b
       ││   0x140006537      call  0x140001374
       └└─> 0x14000653c      mov   eax, edi
            0x14000653e      mov   rcx, qword [rbp+0x07]
            0x140006542      xor   rcx, rsp
            0x140006545      call  0x140001ea0
            0x14000654a      add   rsp, 0xf8
            0x140006551      pop   r15
            0x140006553      pop   r14
            0x140006555      pop   r13
            0x140006557      pop   r12
            0x140006559      pop   rdi
            0x14000655a      pop   rsi
            0x14000655b      pop   rbx
            0x14000655c      pop   rbp
            0x14000655d      ret
            0x14000655e      int3
            0x14000655f      int3
            0x140006560      mov   qword [rsp+0x08], rbx
            0x140006565      mov   qword [rsp+0x10], rsi
            0x14000656a      push  rbp
            0x14000656b      push  rdi
            0x14000656c      push  r12
            0x14000656e      push  r13
            0x140006570      push  r14
            0x140006572      mov   rbp, rsp
            0x140006575      sub   rsp, 0x60
            0x140006579      xor   r14d, r14d
            0x14000657c      mov   rsi, r8
            0x14000657f      mov   qword [rbp-0x20], r14
            0x140006583      mov   rdi, rdx
            0x140006586      mov   qword [rbp+0x48], r14
            0x14000658a      mov   rbx, rcx
            0x14000658d      lea   r12, qword [0x140004030]            ; "0@"
            0x140006594      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
            0x14000659b      lea   r13, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
        ┌─< 0x1400065a2      jz    0x1400065cb
        │   0x1400065a4      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x1400065ab      cmp   word [rcx+0x48], r14w
       ┌──< 0x1400065b0      jz    0x1400065cb
       ││   0x1400065b2      mov   rcx, qword [rcx+0x40]
       ││   0x1400065b6      lea   r8d, qword [r14+0x05]
       ││   0x1400065ba      mov   dl, r8b
       ││   0x1400065bd      mov   qword [rsp+0x20], r13
       ││   0x1400065c2      lea   r9d, qword [r14+0x12]
       ││   0x1400065c6      call  0x140001374
       └└─> 0x1400065cb      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x1400065d2      lea   rcx, qword [rbp+0x48]
            0x1400065d6      mov   qword [rsp+0x20], rcx
            0x1400065db      lea   r9, qword [rbp-0x10]
            0x1400065df      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x1400065e6      mov   r8d, 0x14                           ; 20
            0x1400065ec      mov   rdx, rdi
            0x1400065ef      mov   rax, qword [rax+0x870]
            0x1400065f6      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x1400065fc      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006603      lea   r9, qword [rbp-0x18]
            0x140006607      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x14000660e      mov   r8d, 0x420                          ; 1056
            0x140006614      mov   rdx, rdi
            0x140006617      mov   qword [rsp+0x20], r14
            0x14000661c      mov   rax, qword [rax+0x868]
            0x140006623      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006629      mov   edi, eax
            0x14000662b      test  eax, eax
        ┌─< 0x14000662d      js    0x1400066bf
        │   0x140006633      mov   r9, qword [rbp+0x48]
        │   0x140006637      lea   r8, qword [rbp-0x20]
        │   0x14000663b      mov   rdx, qword [rbp-0x18]
        │   0x14000663f      mov   rcx, rbx
        │   0x140006642      call  section.PAGE
        │   0x140006647      mov   edi, eax
        │   0x140006649      test  eax, eax
       ┌──< 0x14000664b      js    0x1400066bf
       ││   0x14000664d      mov   rbx, qword [rbp-0x20]
       ││   0x140006651      mov   rcx, qword [rbp+0x48]
       ││   0x140006655      mov   eax, dword [rbx+0x04]
       ││   0x140006658      mov   qword [rsi], rax
       ││   0x14000665b      mov   r8d, dword [rbx+0x04]
       ││   0x14000665f      cmp   rcx, r8
      ┌───< 0x140006662      jb    0x140006676
      │││   0x140006664      mov   rcx, qword [rbp-0x10]
      │││   0x140006668      mov   rdx, rbx
      │││   0x14000666b      call  0x140002640
      │││   0x140006670      mov   rcx, qword [rbp+0x48]
     ┌────< 0x140006674      jmp   0x14000667b
     │└───> 0x140006676      mov   edi, 0xc000009a
     └────> 0x14000667b      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
      ┌───< 0x140006682      jz    0x1400066b1
      │││   0x140006684      mov   eax, dword [rbx+0x04]
      │││   0x140006687      mov   r9d, 0x13                           ; 19
      │││   0x14000668d      mov   dword [rsp+0x30], eax
      │││   0x140006691      mov   dl, 0x04
      │││   0x140006693      mov   qword [rsp+0x28], rcx
      │││   0x140006698      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
      │││   0x14000669f      lea   r8d, qword [r9-0x0e]
      │││   0x1400066a3      mov   qword [rsp+0x20], r13
      │││   0x1400066a8      mov   rcx, qword [rcx+0x40]
      │││   0x1400066ac      call  0x14000152c
      └───> 0x1400066b1      mov   edx, 0x636c654f                     ; 'Oelc'
       ││   0x1400066b6      mov   rcx, rbx
       ││   0x1400066b9      call  qword [sym.imp.ntoskrnl.exe_ExFreePoolWithTag] ; [0x140003090:8]=0x833e ; ">\x83"
       └└─> 0x1400066bf      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
        ┌─< 0x1400066c6      jz    0x1400066f1
        │   0x1400066c8      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x1400066cf      cmp   word [rcx+0x48], r14w
       ┌──< 0x1400066d4      jz    0x1400066f1
       ││   0x1400066d6      mov   rcx, qword [rcx+0x40]
       ││   0x1400066da      mov   r9d, 0x14                           ; 20
       ││   0x1400066e0      mov   qword [rsp+0x20], r13
       ││   0x1400066e5      lea   r8d, qword [r9-0x0f]
       ││   0x1400066e9      mov   dl, r8b
       ││   0x1400066ec      call  0x140001374
       └└─> 0x1400066f1      lea   r11, qword [rsp+0x60]
            0x1400066f6      mov   eax, edi
            0x1400066f8      mov   rbx, qword [r11+0x30]
            0x1400066fc      mov   rsi, qword [r11+0x38]
            0x140006700      mov   rsp, r11
            0x140006703      pop   r14
            0x140006705      pop   r13
            0x140006707      pop   r12
            0x140006709      pop   rdi
            0x14000670a      pop   rbp
            0x14000670b      ret
            0x14000670c      mov   rax, rsp
            0x14000670f      mov   qword [rax+0x08], rbx
            0x140006713      mov   qword [rax+0x10], rbp
            0x140006717      mov   qword [rax+0x18], rsi
            0x14000671b      push  rdi
            0x14000671c      push  r12
            0x14000671e      push  r15
            0x140006720      sub   rsp, 0x30
            0x140006724      mov   rdi, r8
            0x140006727      mov   rbx, rdx
            0x14000672a      mov   rsi, rcx
            0x14000672d      lea   rbp, qword [0x140004030]            ; "0@"
            0x140006734      xor   r12d, r12d
            0x140006737      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
            0x14000673e      lea   r15, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
        ┌─< 0x140006745      jz    0x14000676e
        │   0x140006747      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x14000674e      cmp   word [rcx+0x48], r12w
       ┌──< 0x140006753      jz    0x14000676e
       ││   0x140006755      mov   rcx, qword [rcx+0x40]
       ││   0x140006759      lea   r9d, qword [r12+0x18]
       ││   0x14000675e      lea   r8d, qword [r12+0x06]
       ││   0x140006763      mov   qword [rax-0x28], r15
       ││   0x140006767      mov   dl, 0x05
       ││   0x140006769      call  0x140001374
       └└─> 0x14000676e      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006775      mov   rdx, rsi
            0x140006778      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x14000677f      mov   rax, qword [rax+0x4e8]
            0x140006786      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x14000678c      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006793      mov   rdx, rax
            0x140006796      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
            0x14000679d      mov   rax, qword [rcx+0x650]
            0x1400067a4      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x1400067ab      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x1400067b1      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x1400067b8      lea   r9, qword [rsp+0x68]
            0x1400067bd      mov   rsi, rax
            0x1400067c0      mov   qword [rsp+0x20], r12
            0x1400067c5      mov   r8d, 0x04
            0x1400067cb      mov   rdx, rbx
            0x1400067ce      mov   rax, qword [rcx+0x870]
            0x1400067d5      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x1400067dc      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x1400067e2      mov   ebx, eax
            0x1400067e4      test  eax, eax
        ┌─< 0x1400067e6      jns   0x14000681b
        │   0x1400067e8      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
       ┌──< 0x1400067ef      jz    0x140006860
       ││   0x1400067f1      lfence
       ││   0x1400067f4      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x1400067fb      mov   r9d, 0x19                           ; 25
       ││   0x140006801      mov   dword [rsp+0x28], eax
       ││   0x140006805      mov   dl, 0x03
       ││   0x140006807      mov   qword [rsp+0x20], r15
       ││   0x14000680c      mov   rcx, qword [rcx+0x40]
       ││   0x140006810      lea   r8d, qword [r9-0x13]
       ││   0x140006814      call  0x140001438
      ┌───< 0x140006819      jmp   0x14000682f
      ││└─> 0x14000681b      mov   ecx, dword [rsi+0x1078]
      ││    0x140006821      mov   rax, qword [rsp+0x68]
      ││    0x140006826      mov   dword [rax], ecx
      ││    0x140006828      mov   qword [rdi], 0x04
      └───> 0x14000682f      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
       │┌─< 0x140006836      jz    0x140006860
       ││   0x140006838      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x14000683f      cmp   word [rcx+0x48], r12w
      ┌───< 0x140006844      jz    0x140006860
      │││   0x140006846      mov   rcx, qword [rcx+0x40]
      │││   0x14000684a      mov   r9d, 0x1a                           ; 26
      │││   0x140006850      mov   dl, 0x05
      │││   0x140006852      mov   qword [rsp+0x20], r15
      │││   0x140006857      lea   r8d, qword [r9-0x14]
      │││   0x14000685b      call  0x140001374
      └└└─> 0x140006860      mov   rbp, qword [rsp+0x58]
            0x140006865      mov   eax, ebx
            0x140006867      mov   rbx, qword [rsp+0x50]
            0x14000686c      mov   rsi, qword [rsp+0x60]
            0x140006871      add   rsp, 0x30
            0x140006875      pop   r15
            0x140006877      pop   r12
            0x140006879      pop   rdi
            0x14000687a      ret
            0x14000687b      int3
            0x14000687c      mov   rax, rsp
            0x14000687f      mov   qword [rax+0x08], rbx
            0x140006883      mov   qword [rax+0x10], rbp
            0x140006887      mov   qword [rax+0x20], rsi
            0x14000688b      push  rdi
            0x14000688c      push  r12
            0x14000688e      push  r15
            0x140006890      sub   rsp, 0x30
            0x140006894      mov   rsi, rdx
            0x140006897      mov   rbx, rcx
            0x14000689a      lea   r15, qword [0x140004030]            ; "0@"
            0x1400068a1      xor   ebp, ebp
            0x1400068a3      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
            0x1400068aa      lea   r12, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
        ┌─< 0x1400068b1      jz    0x1400068d8
        │   0x1400068b3      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x1400068ba      cmp   word [rcx+0x48], bp
       ┌──< 0x1400068be      jz    0x1400068d8
       ││   0x1400068c0      mov   rcx, qword [rcx+0x40]
       ││   0x1400068c4      lea   r8d, qword [rbp+0x05]
       ││   0x1400068c8      mov   dl, r8b
       ││   0x1400068cb      mov   qword [rax-0x28], r12
       ││   0x1400068cf      lea   r9d, qword [rbp+0x15]
       ││   0x1400068d3      call  0x140001374
       └└─> 0x1400068d8      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x1400068df      mov   rdx, rbx
            0x1400068e2      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x1400068e9      mov   rax, qword [rax+0x4e8]
            0x1400068f0      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x1400068f6      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x1400068fd      mov   rdx, rax
            0x140006900      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
            0x140006907      mov   rax, qword [rcx+0x650]
            0x14000690e      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006915      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x14000691b      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006922      lea   r9, qword [rsp+0x60]
            0x140006927      mov   rbx, rax
            0x14000692a      mov   qword [rsp+0x20], rbp
            0x14000692f      mov   r8d, 0x08
            0x140006935      mov   rdx, rsi
            0x140006938      mov   rax, qword [rcx+0x868]
            0x14000693f      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006946      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x14000694c      mov   edi, eax
            0x14000694e      test  eax, eax
        ┌─< 0x140006950      js    0x1400069cc
        │   0x140006952      lfence
        │   0x140006955      lea   rdi, qword [rbx+0x1080]
        │   0x14000695c      cmp   byte [rbx+0x107c], bpl
       ┌──< 0x140006963      jz    0x140006975
       ││   0x140006965      mov   rcx, qword [rdi]
       ││   0x140006968      mov   byte [rbx+0x107c], bpl
       ││   0x14000696f      call  qword [sym.imp.ntoskrnl.exe_ObfDereferenceObject] ; [0x140003060:8]=0x836e ; "n\x83"
       └──> 0x140006975      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
        │   0x14000697c      mov   rdx, rsi
        │   0x14000697f      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
        │   0x140006986      mov   rax, qword [rax+0x8c0]
        │   0x14000698d      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
        │   0x140006993      mov   r8, qword [sym.imp.ntoskrnl.exe_ExEventObjectType] ; [0x140003058:8]=0x8386
        │   0x14000699a      mov   edx, 0x100002
        │   0x14000699f      mov   rcx, qword [rsp+0x60]
        │   0x1400069a4      mov   r9b, al
        │   0x1400069a7      mov   qword [rsp+0x28], rbp
        │   0x1400069ac      mov   qword [rsp+0x20], rdi
        │   0x1400069b1      mov   r8, qword [r8]
        │   0x1400069b4      mov   rcx, qword [rcx]
        │   0x1400069b7      call  qword [sym.imp.ntoskrnl.exe_ObReferenceObjectByHandle] ; [0x140003088:8]=0x8352 ; "R\x83"
        │   0x1400069bd      mov   edi, eax
        │   0x1400069bf      test  eax, eax
       ┌──< 0x1400069c1      js    0x1400069cc
       ││   0x1400069c3      mov   byte [rbx+0x107c], 0x01
      ┌───< 0x1400069ca      jmp   0x1400069fd
      │└└─> 0x1400069cc      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
      │ ┌─< 0x1400069d3      jz    0x140006a2e
      │ │   0x1400069d5      lfence
      │ │   0x1400069d8      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
      │ │   0x1400069df      mov   r9d, 0x16                           ; 22
      │ │   0x1400069e5      mov   dword [rsp+0x28], edi
      │ │   0x1400069e9      mov   dl, 0x03
      │ │   0x1400069eb      mov   qword [rsp+0x20], r12
      │ │   0x1400069f0      mov   rcx, qword [rcx+0x40]
      │ │   0x1400069f4      lea   r8d, qword [r9-0x11]
      │ │   0x1400069f8      call  0x140001438
      └───> 0x1400069fd      cmp   qword [0x140004030], r15            ; [0x140004030:8]=0x140004030
       ┌──< 0x140006a04      jz    0x140006a2e
       ││   0x140006a06      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x140006a0d      cmp   word [rcx+0x48], bp
      ┌───< 0x140006a11      jz    0x140006a2e
      │││   0x140006a13      mov   rcx, qword [rcx+0x40]
      │││   0x140006a17      mov   r9d, 0x17                           ; 23
      │││   0x140006a1d      mov   qword [rsp+0x20], r12
      │││   0x140006a22      lea   r8d, qword [r9-0x12]
      │││   0x140006a26      mov   dl, r8b
      │││   0x140006a29      call  0x140001374
      └└└─> 0x140006a2e      mov   rbx, qword [rsp+0x50]
            0x140006a33      mov   eax, edi
            0x140006a35      mov   rbp, qword [rsp+0x58]
            0x140006a3a      mov   rsi, qword [rsp+0x68]
            0x140006a3f      add   rsp, 0x30
            0x140006a43      pop   r15
            0x140006a45      pop   r12
            0x140006a47      pop   rdi
            0x140006a48      ret
            0x140006a49      int3
            0x140006a4a      int3
            0x140006a4b      int3
            0x140006a4c      mov   qword [rsp+0x08], rbx
            0x140006a51      mov   qword [rsp+0x10], rsi
            0x140006a56      push  rbp
            0x140006a57      push  rdi
            0x140006a58      push  r12
            0x140006a5a      push  r14
            0x140006a5c      push  r15
            0x140006a5e      mov   rbp, rsp
            0x140006a61      sub   rsp, 0x70
            0x140006a65      xor   r15d, r15d
            0x140006a68      mov   r14, r8
            0x140006a6b      mov   qword [rbp-0x18], r15
            0x140006a6f      mov   rbx, rdx
            0x140006a72      mov   qword [rbp-0x30], r15
            0x140006a76      mov   rdi, rcx
            0x140006a79      mov   qword [rbp-0x28], r15
            0x140006a7d      mov   qword [rbp+0x48], r15
            0x140006a81      lea   r12, qword [0x140004030]            ; "0@"
            0x140006a88      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
            0x140006a8f      lea   rax, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
        ┌─< 0x140006a96      jz    0x140006abe
        │   0x140006a98      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x140006a9f      cmp   word [rcx+0x48], r15w
       ┌──< 0x140006aa4      jz    0x140006abe
       ││   0x140006aa6      mov   rcx, qword [rcx+0x40]
       ││   0x140006aaa      lea   r9d, qword [r15+0x1b]
       ││   0x140006aae      lea   r8d, qword [r15+0x07]
       ││   0x140006ab2      mov   qword [rsp+0x20], rax
       ││   0x140006ab7      mov   dl, 0x05
       ││   0x140006ab9      call  0x140001374
       └└─> 0x140006abe      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006ac5      mov   rdx, rdi
            0x140006ac8      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006acf      mov   rax, qword [rax+0x4e8]
            0x140006ad6      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006adc      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006ae3      mov   rdx, rax
            0x140006ae6      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
            0x140006aed      mov   rax, qword [rcx+0x650]
            0x140006af4      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006afb      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006b01      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006b08      lea   r9, qword [rbp-0x18]
            0x140006b0c      mov   rsi, rax
            0x140006b0f      mov   r8d, 0x04
            0x140006b15      mov   rdx, rbx
            0x140006b18      mov   rax, qword [rcx+0x870]
            0x140006b1f      lea   rcx, qword [rbp-0x28]
            0x140006b23      mov   qword [rsp+0x20], rcx
            0x140006b28      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006b2f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006b35      mov   rcx, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006b3c      lea   r9, qword [rbp-0x20]
            0x140006b40      mov   r8d, 0x0c                           ; 0xc ; 12
            0x140006b46      mov   rdx, rbx
            0x140006b49      mov   rax, qword [rcx+0x868]
            0x140006b50      lea   rcx, qword [rbp-0x30]
            0x140006b54      mov   qword [rsp+0x20], rcx
            0x140006b59      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006b60      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006b66      mov   edi, eax
            0x140006b68      test  eax, eax
        ┌─< 0x140006b6a      jns   0x140006bad
        │   0x140006b6c      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
       ┌──< 0x140006b73      jz    0x140006dd8
       ││   0x140006b79      lfence
       ││   0x140006b7c      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x140006b83      lea   rbx, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
       ││   0x140006b8a      mov   r9d, 0x1c                           ; 28
       ││   0x140006b90      mov   dword [rsp+0x28], eax
       ││   0x140006b94      mov   dl, 0x03
       ││   0x140006b96      mov   qword [rsp+0x20], rbx
       ││   0x140006b9b      mov   rcx, qword [rcx+0x40]
       ││   0x140006b9f      lea   r8d, qword [r9-0x15]
       ││   0x140006ba3      call  0x140001438
      ┌───< 0x140006ba8      jmp   0x140006da7
      ││└─> 0x140006bad      mov   qword [r14], r15
      ││    0x140006bb0      mov   ebx, 0x1000
      ││    0x140006bb5      cmp   byte [rsi+0x04], r15b
      ││┌─< 0x140006bb9      jnz   0x140006c62
      │││   0x140006bbf      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
      │││   0x140006bc6      lea   r8, qword [rbp+0x48]
      │││   0x140006bca      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
      │││   0x140006bd1      xor   r9d, r9d
      │││   0x140006bd4      mov   qword [rsp+0x20], r8
      │││   0x140006bd9      mov   r8d, 0x20019
      │││   0x140006bdf      mov   rdx, qword [rcx]
      │││   0x140006be2      mov   rax, qword [rax+0x3b8]
      │││   0x140006be9      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
      │││   0x140006bef      mov   edi, eax
      │││   0x140006bf1      test  eax, eax
     ┌────< 0x140006bf3      js    0x140006c5e
     ││││   0x140006bf5      lea   rdx, qword [0x140007a70]            ; u"AppSettings"
     ││││   0x140006bfc      lea   rcx, qword [rbp-0x10]
     ││││   0x140006c00      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
     ││││   0x140006c06      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
     ││││   0x140006c0d      lea   rcx, qword [rsi+0x05]
     ││││   0x140006c11      mov   rdx, qword [rbp+0x48]
     ││││   0x140006c15      lea   r8, qword [rbp-0x10]
     ││││   0x140006c19      mov   qword [rsp+0x30], r15
     ││││   0x140006c1e      mov   r9d, ebx
     ││││   0x140006c21      mov   qword [rsp+0x28], r15
     ││││   0x140006c26      mov   rax, qword [rax+0x758]
     ││││   0x140006c2d      mov   qword [rsp+0x20], rcx
     ││││   0x140006c32      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
     ││││   0x140006c39      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
     ││││   0x140006c3f      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
     ││││   0x140006c46      mov   rdx, qword [rbp+0x48]
     ││││   0x140006c4a      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
     ││││   0x140006c51      mov   rax, qword [rax+0x738]
     ││││   0x140006c58      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
     └────> 0x140006c5e      mov   byte [rsi+0x04], 0x01
      ││└─> 0x140006c62      mov   rdx, qword [rbp-0x20]
      ││    0x140006c66      mov   ecx, dword [rdx]
      ││    0x140006c68      test  ecx, ecx
      ││┌─< 0x140006c6a      jz    0x140006d57
      │││   0x140006c70      cmp   ecx, 0x01                           ; 1
     ┌────< 0x140006c73      jz    0x140006c7f
     ││││   0x140006c75      mov   edi, 0xc0000030                     ; '0'
    ┌─────< 0x140006c7a      jmp   0x140006da0
    │└────> 0x140006c7f      movzx ecx, word [rdx+0x06]
    │ │││   0x140006c83      movzx r9d, word [rdx+0x04]
    │ │││   0x140006c88      lea   eax, qword [rcx+r9*1]
    │ │││   0x140006c8c      cmp   eax, ebx
    │┌────< 0x140006c8e      jnbe  0x140006da0
    │││││   0x140006c94      lea   rax, qword [rcx+0x08]
    │││││   0x140006c98      mov   r8d, ecx
    │││││   0x140006c9b      cmp   qword [rbp-0x30], rax
   ┌──────< 0x140006c9f      jb    0x140006da0
   ││││││   0x140006ca5      lea   rcx, qword [r9+0x05]
   ││││││   0x140006ca9      add   rdx, 0x08
   ││││││   0x140006cad      add   rcx, rsi
   ││││││   0x140006cb0      call  0x140002640
   ││││││   0x140006cb5      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
   ││││││   0x140006cbc      lea   r8, qword [rbp+0x48]
   ││││││   0x140006cc0      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
   ││││││   0x140006cc7      xor   r9d, r9d
   ││││││   0x140006cca      mov   qword [rsp+0x20], r8
   ││││││   0x140006ccf      mov   r8d, 0x20006
   ││││││   0x140006cd5      mov   rdx, qword [rcx]
   ││││││   0x140006cd8      mov   rax, qword [rax+0x3b8]
   ││││││   0x140006cdf      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
   ││││││   0x140006ce5      mov   edi, eax
   ││││││   0x140006ce7      test  eax, eax
  ┌───────< 0x140006ce9      js    0x140006da0
  │││││││   0x140006cef      lea   rdx, qword [0x140007a70]            ; u"AppSettings"
  │││││││   0x140006cf6      lea   rcx, qword [rbp-0x10]
  │││││││   0x140006cfa      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
  │││││││   0x140006d00      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
  │││││││   0x140006d07      lea   rcx, qword [rsi+0x05]
  │││││││   0x140006d0b      mov   rdx, qword [rbp+0x48]
  │││││││   0x140006d0f      lea   r8, qword [rbp-0x10]
  │││││││   0x140006d13      mov   qword [rsp+0x28], rcx
  │││││││   0x140006d18      mov   r9d, 0x03
  │││││││   0x140006d1e      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
  │││││││   0x140006d25      mov   rax, qword [rax+0x788]
  │││││││   0x140006d2c      mov   dword [rsp+0x20], ebx
  │││││││   0x140006d30      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
  │││││││   0x140006d36      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
  │││││││   0x140006d3d      mov   rdx, qword [rbp+0x48]
  │││││││   0x140006d41      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
  │││││││   0x140006d48      mov   rax, qword [rax+0x738]
  │││││││   0x140006d4f      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
  ────────< 0x140006d55      jmp   0x140006da0
  ││││││└─> 0x140006d57      movzx r8d, word [rdx+0x04]
  ││││││    0x140006d5c      cmp   r8w, bx
  ││││││┌─< 0x140006d60      jnb   0x140006da0
  │││││││   0x140006d62      movzx eax, word [rdx+0x06]
  │││││││   0x140006d66      cmp   qword [rbp-0x28], rax
  ────────< 0x140006d6a      jb    0x140006da0
  │││││││   0x140006d6c      lea   ecx, qword [rax+r8*1]
  │││││││   0x140006d70      cmp   ecx, ebx
  ────────< 0x140006d72      jbe   0x140006d80
  │││││││   0x140006d74      sub   bx, r8w
  │││││││   0x140006d78      mov   word [rdx+0x06], bx
  │││││││   0x140006d7c      mov   rdx, qword [rbp-0x20]
  ────────> 0x140006d80      movzx eax, word [rdx+0x06]
  │││││││   0x140006d84      mov   rcx, qword [rbp-0x18]
  │││││││   0x140006d88      mov   qword [r14], rax
  │││││││   0x140006d8b      movzx r8d, word [rdx+0x06]
  │││││││   0x140006d90      movzx eax, word [rdx+0x04]
  │││││││   0x140006d94      lea   rdx, qword [rsi+0x05]
  │││││││   0x140006d98      add   rdx, rax
  │││││││   0x140006d9b      call  0x140002640
  └└└└──└─> 0x140006da0      lea   rbx, qword [0x140003160]            ; "\t\xad\x95\xcf@Z*=-I\U0000001d\xf0\x81\xeb\x90\xfe\xf6\xffY9\x89Ć6\xbc\x93Ƕ\xe3\xd9N\x83G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\x"
      └───> 0x140006da7      cmp   qword [0x140004030], r12            ; [0x140004030:8]=0x140004030
       │┌─< 0x140006dae      jz    0x140006dd8
       ││   0x140006db0      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x140006db7      cmp   word [rcx+0x48], r15w
      ┌───< 0x140006dbc      jz    0x140006dd8
      │││   0x140006dbe      mov   rcx, qword [rcx+0x40]
      │││   0x140006dc2      mov   r9d, 0x1d                           ; 29
      │││   0x140006dc8      mov   dl, 0x05
      │││   0x140006dca      mov   qword [rsp+0x20], rbx
      │││   0x140006dcf      lea   r8d, qword [r9-0x16]
      │││   0x140006dd3      call  0x140001374
      └└└─> 0x140006dd8      lea   r11, qword [rsp+0x70]
            0x140006ddd      mov   eax, edi
            0x140006ddf      mov   rbx, qword [r11+0x30]
            0x140006de3      mov   rsi, qword [r11+0x38]
            0x140006de7      mov   rsp, r11
            0x140006dea      pop   r15
            0x140006dec      pop   r14
            0x140006dee      pop   r12
            0x140006df0      pop   rdi
            0x140006df1      pop   rbp
            0x140006df2      ret
            0x140006df3      int3
            0x140006df4      mov   qword [rsp+0x18], rbx
            0x140006df9      mov   qword [rsp+0x08], rcx
            0x140006dfe      push  rbp
            0x140006dff      lea   rbp, qword [rsp-0x57]
            0x140006e04      sub   rsp, 0x100
            0x140006e0b      mov   rbx, rcx
            0x140006e0e      xor   edx, edx
            0x140006e10      lea   rcx, qword [rbp-0x39]
            0x140006e14      mov   r8d, 0x90                           ; 144
            0x140006e1a      call  0x140002900
            0x140006e1f      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006e26      lea   rax, qword [0x140006f90]            ; "H\x8b\xc4H\x89X\bH\x89h\U00000010H\x89p\U00000018H\x89x ATAVAWH\x83\xec@H\x8b\xd9E3\xf6H\x8d-v\xd0\xff\xffH9-o\xd0\xff\xffL\x8d="
            0x140006e2d      mov   qword [rbp-0x11], rax
            0x140006e31      lea   r8, qword [rbp-0x39]
            0x140006e35      lea   rax, qword [0x140007160]            ; "H\x8b\xc4H\x89X\bH\x89x\U00000010L\x89p\U00000018AWH\x83\xec0H\x8b\xf9L\x8d5\xb1\xce\xff\xffL95\xaa\xce\xff\xffL\x8d=\xe3\xbf\xf"
            0x140006e3c      mov   dword [rbp-0x39], 0x90              ; 144
            0x140006e43      mov   qword [rbp-0x09], rax
            0x140006e47      mov   rdx, rbx
            0x140006e4a      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006e51      mov   rax, qword [rax+0x1b8]
            0x140006e58      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006e5e      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140006e65      lea   r9, qword [rbp+0x6f]
            0x140006e69      xorps xmm0, xmm0
            0x140006e6c      lea   r8, qword [rbp-0x79]
            0x140006e70      movups xmmword [rbp-0x69], xmm0
            0x140006e74      mov   eax, 0x01
            0x140006e79      lea   rdx, qword [rbp+0x67]
            0x140006e7d      mov   dword [rbp-0x61], eax
            0x140006e80      mov   dword [rbp-0x5d], eax
            0x140006e83      mov   rax, qword [0x140004018]            ; [0x140004018:8]=0x140004000 section..data
            0x140006e8a      mov   qword [rbp-0x49], rax
            0x140006e8e      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006e95      movups xmmword [rbp-0x79], xmm0
            0x140006e99      mov   dword [rbp-0x79], 0x38              ; '8' ; 56
            0x140006ea0      movups xmmword [rbp-0x59], xmm0
            0x140006ea4      mov   rax, qword [rax+0x258]
            0x140006eab      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140006eb1      test  eax, eax
        ┌─< 0x140006eb3      js    0x140006f71
        │   0x140006eb9      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
        │   0x140006ec0      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
        │   0x140006ec7      mov   rdx, qword [rbp+0x6f]
        │   0x140006ecb      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
        │   0x140006ed2      mov   rax, qword [rax+0x650]
        │   0x140006ed9      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
        │   0x140006edf      xor   edx, edx
        │   0x140006ee1      mov   rbx, rax
        │   0x140006ee4      and   dword [rax], 0x00
        │   0x140006ee7      mov   byte [rax+0x1008], 0x00
        │   0x140006eee      lea   r8d, qword [rdx+0x58]
        │   0x140006ef2      mov   byte [rax+0x1068], 0x00
        │   0x140006ef9      mov   rcx, qword [rbp+0x6f]
        │   0x140006efd      and   dword [rax+0x1078], 0x00
        │   0x140006f04      and   qword [rax+0x1080], 0x00
        │   0x140006f0c      mov   qword [rax+0x1070], rcx
        │   0x140006f13      lea   rcx, qword [rax+0x1010]
        │   0x140006f1a      mov   byte [rax+0x107c], 0x00
        │   0x140006f21      call  0x140002900
        │   0x140006f26      lea   rcx, qword [rbx+0x05]
        │   0x140006f2a      mov   byte [rbx+0x04], 0x00
        │   0x140006f2e      xor   edx, edx
        │   0x140006f30      mov   r8d, 0x1000
        │   0x140006f36      call  0x140002900
        │   0x140006f3b      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
        │   0x140006f42      lea   r8, qword [0x140003130]             ; "tL\x99\x86C\xad\U00000012H\xb7\xe7\fB\v\_\xd7DEVICE_CONTEXT"
        │   0x140006f49      mov   rdx, qword [rbp+0x6f]
        │   0x140006f4d      xor   r9d, r9d
        │   0x140006f50      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
        │   0x140006f57      mov   rax, qword [rax+0x268]
        │   0x140006f5e      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
        │   0x140006f64      test  eax, eax
       ┌──< 0x140006f66      js    0x140006f71
       ││   0x140006f68      mov   rcx, qword [rbp+0x6f]
       ││   0x140006f6c      call  0x140007988
       └└─> 0x140006f71      mov   rbx, qword [rsp+0x120]
            0x140006f79      add   rsp, 0x100
            0x140006f80      pop   rbp
            0x140006f81      ret
            0x140006f82      int3
            0x140006f83      int3
            0x140006f84      int3
            0x140006f85      int3
            0x140006f86      int3
            0x140006f87      int3
            0x140006f88      int3
            0x140006f89      int3
            0x140006f8a      int3
            0x140006f8b      int3
            0x140006f8c      int3
            0x140006f8d      int3
            0x140006f8e      int3
            0x140006f8f      int3
            0x140006f90      mov   rax, rsp
            0x140006f93      mov   qword [rax+0x08], rbx
            0x140006f97      mov   qword [rax+0x10], rbp
            0x140006f9b      mov   qword [rax+0x18], rsi
            0x140006f9f      mov   qword [rax+0x20], rdi
            0x140006fa3      push  r12
            0x140006fa5      push  r14
            0x140006fa7      push  r15
            0x140006fa9      sub   rsp, 0x40
            0x140006fad      mov   rbx, rcx
            0x140006fb0      xor   r14d, r14d
            0x140006fb3      lea   rbp, qword [0x140004030]            ; "0@"
            0x140006fba      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
            0x140006fc1      lea   r15, qword [0x140003170]
            0x140006fc8      lea   esi, qword [r14+0x05]
        ┌─< 0x140006fcc      jz    0x140006ff3
        │   0x140006fce      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x140006fd5      cmp   word [rcx+0x48], r14w
       ┌──< 0x140006fda      jz    0x140006ff3
       ││   0x140006fdc      mov   rcx, qword [rcx+0x40]
       ││   0x140006fe0      lea   r9d, qword [r14+0x0a]
       ││   0x140006fe4      mov   r8d, esi
       ││   0x140006fe7      mov   qword [rax-0x38], r15
       ││   0x140006feb      mov   dl, sil
       ││   0x140006fee      call  0x140001374
       └└─> 0x140006ff3      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x140006ffa      mov   rdx, rbx
            0x140006ffd      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
            0x140007004      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x14000700b      mov   rax, qword [rax+0x650]
            0x140007012      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140007018      lea   rdi, qword [rax+0x1008]
            0x14000701f      cmp   byte [rdi], r14b
        ┌─< 0x140007022      jnz   0x140007101
        │   0x140007028      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
        │   0x14000702f      lea   r9, qword [rdi+0x08]
        │   0x140007033      mov   ecx, 0x58                           ; 'X' ; 88
        │   0x140007038      mov   qword [rsp+0x30], r14
        │   0x14000703d      lea   r8, qword [0x140003120]             ; "c_i\xe81\U00000018pH\xa8Ϝ/\U00000003\xf9ܵtL\x99\x86C\xad\U00000012H\xb7\xe7\fB\v\_\xd7DEVICE_CONTEXT"
        │   0x140007044      mov   rdx, rbx
        │   0x140007047      mov   rax, qword [rax+0x418]
        │   0x14000704e      lea   r12d, qword [rcx-0x57]
        │   0x140007052      mov   word [rsp+0x28], r12w
        │   0x140007058      mov   word [rsp+0x20], cx
        │   0x14000705d      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
        │   0x140007064      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
        │   0x14000706a      test  eax, eax
       ┌──< 0x14000706c      js    0x1400070d0
       ││   0x14000706e      lfence
       ││   0x140007071      mov   r9, rdi
       ││   0x140007074      lea   r8, qword section..text             ; 0x140001000 ; "H\x8b\xc4H\x89X\bH\x89h\U00000010H\x89p\U00000018H\x89x ATH\x83\xec@\x8b\xfaH\x8b\xd9H\x8d-\v0"
       ││   0x14000707b      mov   rdx, rdi
       ││   0x14000707e      mov   rcx, rbx
       ││   0x140007081      call  0x140001128
       ││   0x140007086      test  eax, eax
      ┌───< 0x140007088      js    0x1400070bf
      │││   0x14000708a      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
     ┌────< 0x140007091      jz    0x1400070ba
     ││││   0x140007093      lfence
     ││││   0x140007096      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
     ││││   0x14000709d      lea   r9d, qword [r12+0x0a]
     ││││   0x1400070a2      mov   qword [rsp+0x28], rbx
     ││││   0x1400070a7      mov   r8d, esi
     ││││   0x1400070aa      mov   dl, 0x04
     ││││   0x1400070ac      mov   qword [rsp+0x20], r15
     ││││   0x1400070b1      mov   rcx, qword [rcx+0x40]
     ││││   0x1400070b5      call  0x14000164c
     └────> 0x1400070ba      mov   byte [rdi], r12b
     ┌────< 0x1400070bd      jmp   0x140007101
     │└───> 0x1400070bf      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
     │┌───< 0x1400070c6      jz    0x140007132
     ││││   0x1400070c8      mov   r9d, 0x0d                           ; 0xd ; 13
    ┌─────< 0x1400070ce      jmp   0x1400070df
    │││└──> 0x1400070d0      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
    │││┌──< 0x1400070d7      jz    0x140007132
    │││││   0x1400070d9      mov   r9d, 0x0e                           ; 0xe ; 14
    └─────> 0x1400070df      lfence
     ││││   0x1400070e2      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
     ││││   0x1400070e9      mov   r8d, esi
     ││││   0x1400070ec      mov   qword [rsp+0x28], rbx
     ││││   0x1400070f1      mov   dl, 0x03
     ││││   0x1400070f3      mov   qword [rsp+0x20], r15
     ││││   0x1400070f8      mov   rcx, qword [rcx+0x40]
     ││││   0x1400070fc      call  0x14000164c
     └──└─> 0x140007101      cmp   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
      ││┌─< 0x140007108      jz    0x140007132
      │││   0x14000710a      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
      │││   0x140007111      cmp   word [rcx+0x48], r14w
     ┌────< 0x140007116      jz    0x140007132
     ││││   0x140007118      mov   rcx, qword [rcx+0x40]
     ││││   0x14000711c      mov   r9d, 0x0f                           ; 0xf ; 15
     ││││   0x140007122      mov   r8d, esi
     ││││   0x140007125      mov   qword [rsp+0x20], r15
     ││││   0x14000712a      mov   dl, sil
     ││││   0x14000712d      call  0x140001374
     └└└└─> 0x140007132      mov   rbx, qword [rsp+0x60]
            0x140007137      xor   eax, eax
            0x140007139      mov   rbp, qword [rsp+0x68]
            0x14000713e      mov   rsi, qword [rsp+0x70]
            0x140007143      mov   rdi, qword [rsp+0x78]
            0x140007148      add   rsp, 0x40
            0x14000714c      pop   r15
            0x14000714e      pop   r14
            0x140007150      pop   r12
            0x140007152      ret
            0x140007153      int3
            0x140007154      int3
            0x140007155      int3
            0x140007156      int3
            0x140007157      int3
            0x140007158      int3
            0x140007159      int3
            0x14000715a      int3
            0x14000715b      int3
            0x14000715c      int3
            0x14000715d      int3
            0x14000715e      int3
            0x14000715f      int3
            0x140007160      mov   rax, rsp
            0x140007163      mov   qword [rax+0x08], rbx
            0x140007167      mov   qword [rax+0x10], rdi
            0x14000716b      mov   qword [rax+0x18], r14
            0x14000716f      push  r15
            0x140007171      sub   rsp, 0x30
            0x140007175      mov   rdi, rcx
            0x140007178      lea   r14, qword [0x140004030]            ; "0@"
            0x14000717f      cmp   qword [0x140004030], r14            ; [0x140004030:8]=0x140004030
            0x140007186      lea   r15, qword [0x140003170]
        ┌─< 0x14000718d      jz    0x1400071b7
        │   0x14000718f      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x140007196      cmp   word [rcx+0x48], 0x00
       ┌──< 0x14000719b      jz    0x1400071b7
       ││   0x14000719d      mov   rcx, qword [rcx+0x40]
       ││   0x1400071a1      mov   r9d, 0x10                           ; 16
       ││   0x1400071a7      mov   qword [rax-0x18], r15
       ││   0x1400071ab      lea   r8d, qword [r9-0x0b]
       ││   0x1400071af      mov   dl, r8b
       ││   0x1400071b2      call  0x140001374
       └└─> 0x1400071b7      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x1400071be      mov   rdx, rdi
            0x1400071c1      mov   r8, qword [0x140004018]             ; [0x140004018:8]=0x140004000 section..data
            0x1400071c8      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x1400071cf      mov   rax, qword [rax+0x650]
            0x1400071d6      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x1400071dc      cmp   byte [rax+0x107c], 0x00
            0x1400071e3      lea   rbx, qword [rax+0x1008]
        ┌─< 0x1400071ea      jz    0x140007200
        │   0x1400071ec      mov   rcx, qword [rax+0x1080]
        │   0x1400071f3      mov   byte [rax+0x107c], 0x00
        │   0x1400071fa      call  qword [sym.imp.ntoskrnl.exe_ObfDereferenceObject] ; [0x140003060:8]=0x836e ; "n\x83"
        └─> 0x140007200      cmp   byte [rbx], 0x00
        ┌─< 0x140007203      jz    0x140007230
        │   0x140007205      mov   rdx, rbx
        │   0x140007208      mov   rcx, rdi
        │   0x14000720b      call  0x14000128c
        │   0x140007210      mov   rax, qword [rbx+0x20]
        │   0x140007214      mov   rcx, qword [rbx+0x10]
        │   0x140007218      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
        │   0x14000721e      xor   edx, edx
        │   0x140007220      lea   rcx, qword [rbx+0x08]
        │   0x140007224      lea   r8d, qword [rdx+0x58]
        │   0x140007228      call  0x140002900
        │   0x14000722d      mov   byte [rbx], 0x00
        └─> 0x140007230      cmp   qword [0x140004030], r14            ; [0x140004030:8]=0x140004030
        ┌─< 0x140007237      jz    0x140007262
        │   0x140007239      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x140007240      cmp   word [rcx+0x48], 0x00
       ┌──< 0x140007245      jz    0x140007262
       ││   0x140007247      mov   rcx, qword [rcx+0x40]
       ││   0x14000724b      mov   r9d, 0x11                           ; 17
       ││   0x140007251      mov   qword [rsp+0x20], r15
       ││   0x140007256      lea   r8d, qword [r9-0x0c]
       ││   0x14000725a      mov   dl, r8b
       ││   0x14000725d      call  0x140001374
       └└─> 0x140007262      mov   rbx, qword [rsp+0x40]
            0x140007267      xor   eax, eax
            0x140007269      mov   rdi, qword [rsp+0x48]
            0x14000726e      mov   r14, qword [rsp+0x50]
            0x140007273      add   rsp, 0x30
            0x140007277      pop   r15
            0x140007279      ret
            0x14000727a      int3
            0x14000727b      int3
            0x14000727c      int3
            0x14000727d      int3
            0x14000727e      int3
            0x14000727f      int3
            0x140007280      mov   qword [rsp+0x08], rbx
            0x140007285      mov   qword [rsp+0x10], rbp
            0x14000728a      push  rdi
            0x14000728b      sub   rsp, 0x30
            0x14000728f      mov   rbx, rdx
            0x140007292      lea   rdi, qword [0x140004030]            ; "0@"
            0x140007299      cmp   qword [0x140004030], rdi            ; [0x140004030:8]=0x140004030
            0x1400072a0      lea   rbp, qword [0x140003180]            ; "G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\xe1\xb9\xefs缃R?\xc9\xc5˾Pm\xfb\x98K"
        ┌─< 0x1400072a7      jz    0x1400072d1
        │   0x1400072a9      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x1400072b0      cmp   word [rcx+0x48], 0x00
       ┌──< 0x1400072b5      jz    0x1400072d1
       ││   0x1400072b7      mov   rcx, qword [rcx+0x40]
       ││   0x1400072bb      mov   r9d, 0x0d                           ; 0xd ; 13
       ││   0x1400072c1      mov   dl, 0x05
       ││   0x1400072c3      mov   qword [rsp+0x20], rbp
       ││   0x1400072c8      lea   r8d, qword [r9-0x0b]
       ││   0x1400072cc      call  0x140001374
       └└─> 0x1400072d1      mov   rcx, rbx
            0x1400072d4      call  0x140006df4
            0x1400072d9      mov   ebx, eax
            0x1400072db      cmp   qword [0x140004030], rdi            ; [0x140004030:8]=0x140004030
        ┌─< 0x1400072e2      jz    0x14000730c
        │   0x1400072e4      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x1400072eb      cmp   word [rcx+0x48], 0x00
       ┌──< 0x1400072f0      jz    0x14000730c
       ││   0x1400072f2      mov   rcx, qword [rcx+0x40]
       ││   0x1400072f6      mov   r9d, 0x0e                           ; 0xe ; 14
       ││   0x1400072fc      mov   dl, 0x05
       ││   0x1400072fe      mov   qword [rsp+0x20], rbp
       ││   0x140007303      lea   r8d, qword [r9-0x0c]
       ││   0x140007307      call  0x140001374
       └└─> 0x14000730c      mov   rbp, qword [rsp+0x48]
            0x140007311      mov   eax, ebx
            0x140007313      mov   rbx, qword [rsp+0x40]
            0x140007318      add   rsp, 0x30
            0x14000731c      pop   rdi
            0x14000731d      ret
            0x14000731e      int3
            0x14000731f      int3
            0x140007320      push  rbx
            0x140007322      sub   rsp, 0x30
            0x140007326      mov   rbx, rcx
            0x140007329      lea   rax, qword [0x140004030]            ; "0@"
            0x140007330      cmp   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
        ┌─< 0x140007337      jz    0x140007368
        │   0x140007339      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x140007340      cmp   word [rcx+0x48], 0x00
       ┌──< 0x140007345      jz    0x140007368
       ││   0x140007347      mov   rcx, qword [rcx+0x40]
       ││   0x14000734b      lea   rax, qword [0x140003180]            ; "G\xbf\xbcʲ&\xe19\xd6x\x9cG\xbaD\xb2\xe1\xb9\xefs缃R?\xc9\xc5˾Pm\xfb\x98K"
       ││   0x140007352      mov   r9d, 0x0f                           ; 0xf ; 15
       ││   0x140007358      mov   qword [rsp+0x20], rax
       ││   0x14000735d      mov   dl, 0x05
       ││   0x14000735f      lea   r8d, qword [r9-0x0d]
       ││   0x140007363      call  0x140001374
       └└─> 0x140007368      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x14000736f      mov   rdx, rbx
            0x140007372      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140007379      mov   rax, qword [rax+0x3b0]
            0x140007380      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140007386      mov   rcx, rax
            0x140007389      add   rsp, 0x30
            0x14000738d      pop   rbx
        ┌─< 0x14000738e      jmp   0x140007394
        │   0x140007393      int3
        └─> 0x140007394      mov   qword [rsp+0x08], rbx
            0x140007399      mov   qword [rsp+0x10], rsi
            0x14000739e      push  rdi
            0x14000739f      sub   rsp, 0x20
            0x1400073a3      mov   rbx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
            0x1400073aa      lea   rsi, qword [0x140004028]            ; "(@"
            0x1400073b1      mov   rdi, rcx
            0x1400073b4      cmp   rbx, rsi
        ┌─< 0x1400073b7      jz    0x1400073fb
        │   0x1400073b9      mov   eax, dword [0x140004128]            ; [0x140004128:4]=0
        │   0x1400073bf      cmp   eax, 0x04                           ; 4
       ┌──< 0x1400073c2      jz    0x14000742a
       ││   0x1400073c4      cmp   eax, 0x02                           ; 2
      ┌───< 0x1400073c7      jnz   0x1400073d7
      │││   0x1400073c9      mov   edx, 0x80000002
      │││   0x1400073ce      mov   rcx, rbx
      │││   0x1400073d1      call  qword [sym.imp.ntoskrnl.exe_IoWMIRegistrationControl] ; [0x140003068:8]=0x83b6
     ┌└───> 0x1400073d7      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
     ╎ ││   0x1400073de      mov   rdx, rdi
     ╎ ││   0x1400073e1      call  0x1400025ad
     ╎ ││   0x1400073e6      lea   rax, qword [0x140004030]            ; "0@"
     ╎ ││   0x1400073ed      mov   qword [0x140004028], rsi            ; [0x140004028:8]=0x140004028
     ╎ ││   0x1400073f4      mov   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
     ╎ │└─> 0x1400073fb      mov   rbx, qword [rsp+0x30]
     ╎ │    0x140007400      mov   rsi, qword [rsp+0x38]
     ╎ │    0x140007405      add   rsp, 0x20
     ╎ │    0x140007409      pop   rdi
     ╎ │    0x14000740a      ret
     ╎ │┌─> 0x14000740b      mov   rcx, qword [rbx+0x38]
     ╎ │╎   0x14000740f      test  rcx, rcx
     ╎┌───< 0x140007412      jz    0x140007426
     ╎││╎   0x140007414      mov   rax, qword [0x140004110]            ; [0x140004110:8]=0
     ╎││╎   0x14000741b      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
     ╎││╎   0x140007421      and   qword [rbx+0x38], 0x00
     ╎└───> 0x140007426      mov   rbx, qword [rbx+0x10]
     ╎ └──> 0x14000742a      test  rbx, rbx
     ╎  └─< 0x14000742d      jnz   0x14000740b
     └────< 0x14000742f      jmp   0x1400073d7
            0x140007431      int3
            0x140007432      int3
            0x140007433      int3
            0x140007434      mov   qword [rsp+0x08], rbx
            0x140007439      mov   qword [rsp+0x10], rbp
            0x14000743e      mov   qword [rsp+0x18], rsi
            0x140007443      push  rdi
            0x140007444      sub   rsp, 0x30
            0x140007448      lea   rbp, qword [0x140004380]
            0x14000744f      mov   rdi, rdx
            0x140007452      cmp   qword [0x140004028], rbp            ; [0x140004028:8]=0x140004028
            0x140007459      mov   rsi, rcx
        ┌─< 0x14000745c      jz    0x1400074e6
        │   0x140007462      mov   eax, dword [0x140004128]            ; [0x140004128:4]=0
        │   0x140007468      mov   qword [0x140004028], rbp            ; [0x140004028:8]=0x140004028
        │   0x14000746f      cmp   eax, 0x04                           ; 4
       ┌──< 0x140007472      jnz   0x1400074ac
       ││   0x140007474      mov   rbx, rbp
      ┌───> 0x140007477      lea   rcx, qword [rbx+0x38]
      ╎││   0x14000747b      mov   r9, rbx
      ╎││   0x14000747e      and   qword [rcx], 0x00
      ╎││   0x140007482      lea   r8, qword [0x140001c50]
      ╎││   0x140007489      mov   rax, qword [0x140004118]            ; [0x140004118:8]=0
      ╎││   0x140007490      xor   edx, edx
      ╎││   0x140007492      mov   qword [rsp+0x20], rcx
      ╎││   0x140007497      mov   rcx, qword [rbx+0x08]
      ╎││   0x14000749b      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
      ╎││   0x1400074a1      mov   rbx, qword [rbx+0x10]
      ╎││   0x1400074a5      test  rbx, rbx
      └───< 0x1400074a8      jnz   0x140007477
      ┌───< 0x1400074aa      jmp   0x1400074cd
      │└──> 0x1400074ac      cmp   eax, 0x02                           ; 2
      │┌──< 0x1400074af      jnz   0x1400074cd
      │││   0x1400074b1      lea   rax, qword [0x140007600]            ; "H\x89\$\U00000010H\x89l$\U00000018H\x89t$ WATAUAVAWH\x83\xec@L\x8b\xac$\x98"
      │││   0x1400074b8      mov   edx, 0x80010001
      │││   0x1400074bd      mov   rcx, rbp
      │││   0x1400074c0      mov   qword [0x140004380], rax            ; [0x140004380:8]=0
      │││   0x1400074c7      call  qword [sym.imp.ntoskrnl.exe_IoWMIRegistrationControl] ; [0x140003068:8]=0x83b6
      └└──> 0x1400074cd      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x1400074d4      mov   r8, rdi
        │   0x1400074d7      mov   rdx, rsi
        │   0x1400074da      call  0x1400025a7
        │   0x1400074df      mov   qword [0x140004030], rbp            ; [0x140004030:8]=0x140004030
        └─> 0x1400074e6      mov   rbx, qword [rsp+0x40]
            0x1400074eb      mov   rbp, qword [rsp+0x48]
            0x1400074f0      mov   rsi, qword [rsp+0x50]
            0x1400074f5      add   rsp, 0x30
            0x1400074f9      pop   rdi
            0x1400074fa      ret
            0x1400074fb      int3
            0x1400074fc      push  rbp
            0x1400074fe      mov   rbp, rsp
            0x140007501      sub   rsp, 0x40
            0x140007505      and   dword [rbp+0x10], 0x00
            0x140007509      lea   rdx, qword [0x140007a90]            ; u"PsGetVersion"
            0x140007510      lea   rcx, qword [rbp-0x10]
            0x140007514      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
            0x14000751a      lea   rcx, qword [rbp-0x10]
            0x14000751e      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
            0x140007524      lea   rdx, qword [0x140007ab0]            ; u"WmiTraceMessage"
            0x14000752b      mov   qword [0x140004120], rax            ; [0x140004120:8]=0
            0x140007532      lea   rcx, qword [rbp-0x10]
            0x140007536      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
            0x14000753c      lea   rcx, qword [rbp-0x10]
            0x140007540      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
            0x140007546      lea   rdx, qword [0x140007ad0]            ; u"WmiQueryTraceInformation"
            0x14000754d      mov   qword [0x140004108], rax            ; [0x140004108:8]=0
            0x140007554      lea   rcx, qword [rbp-0x10]
            0x140007558      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
            0x14000755e      lea   rcx, qword [rbp-0x10]
            0x140007562      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
            0x140007568      mov   qword [0x140004100], rax            ; [0x140004100:8]=0
            0x14000756f      mov   rax, qword [0x140004120]            ; [0x140004120:8]=0
            0x140007576      mov   dword [0x140004128], 0x02           ; [0x140004128:4]=0
            0x140007580      test  rax, rax
        ┌─< 0x140007583      jz    0x140007597
        │   0x140007585      xor   r9d, r9d
        │   0x140007588      lea   rcx, qword [rbp+0x10]
        │   0x14000758c      xor   r8d, r8d
        │   0x14000758f      xor   edx, edx
        │   0x140007591      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
        └─> 0x140007597      cmp   dword [rbp+0x10], 0x06
        ┌─< 0x14000759b      jb    0x1400075f0
        │   0x14000759d      lea   rdx, qword [0x140007b10]            ; u"EtwRegisterClassicProvider"
        │   0x1400075a4      lea   rcx, qword [rbp-0x10]
        │   0x1400075a8      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
        │   0x1400075ae      lea   rcx, qword [rbp-0x10]
        │   0x1400075b2      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
        │   0x1400075b8      mov   qword [0x140004118], rax            ; [0x140004118:8]=0
        │   0x1400075bf      test  rax, rax
       ┌──< 0x1400075c2      jz    0x1400075f0
       ││   0x1400075c4      lea   rdx, qword [0x140007b50]            ; u"EtwUnregister"
       ││   0x1400075cb      lea   rcx, qword [rbp-0x10]
       ││   0x1400075cf      call  qword [sym.imp.ntoskrnl.exe_RtlInitUnicodeString] ; [0x140003078:8]=0x8300
       ││   0x1400075d5      lea   rcx, qword [rbp-0x10]
       ││   0x1400075d9      call  qword [sym.imp.ntoskrnl.exe_MmGetSystemRoutineAddress] ; [0x140003050:8]=0x839a
       ││   0x1400075df      mov   qword [0x140004110], rax            ; [0x140004110:8]=0
       ││   0x1400075e6      mov   dword [0x140004128], 0x04           ; [0x140004128:4]=0
       └└─> 0x1400075f0      add   rsp, 0x40
            0x1400075f4      pop   rbp
            0x1400075f5      ret
            0x1400075f6      int3
            0x1400075f7      int3
            0x1400075f8      int3
            0x1400075f9      int3
            0x1400075fa      int3
            0x1400075fb      int3
            0x1400075fc      int3
            0x1400075fd      int3
            0x1400075fe      int3
            0x1400075ff      int3
            0x140007600      mov   qword [rsp+0x10], rbx
            0x140007605      mov   qword [rsp+0x18], rbp
            0x14000760a      mov   qword [rsp+0x20], rsi
            0x14000760f      push  rdi
            0x140007610      push  r12
            0x140007612      push  r13
            0x140007614      push  r14
            0x140007616      push  r15
            0x140007618      sub   rsp, 0x40
            0x14000761c      mov   r13, qword [rsp+0x98]
            0x140007624      xor   ebx, ebx
            0x140007626      mov   rsi, r9
            0x140007629      movzx r9d, cl
            0x14000762d      mov   edx, r9d
            0x140007630      mov   dword [r13], ebx
            0x140007634      cmp   r9d, 0x05                           ; 5
        ┌─< 0x140007638      jnbe  0x14000775e
       ┌──< 0x14000763e      jz    0x14000766c
       ││   0x140007640      test  cl, cl
      ┌───< 0x140007642      jz    0x140007775
      │││   0x140007648      sub   edx, 0x01
     ┌────< 0x14000764b      jz    0x140007775
     ││││   0x140007651      sub   edx, 0x01
    ┌─────< 0x140007654      jz    0x140007775
    │││││   0x14000765a      sub   edx, 0x01
   ┌──────< 0x14000765d      jz    0x140007775
   ││││││   0x140007663      cmp   edx, 0x01                           ; 1
  ┌───────< 0x140007666      jnz   0x140007775
  │││││└──> 0x14000766c      mov   rdi, qword [rsp+0x90]
  │││││ │   0x140007674      test  rdi, rdi
  │││││┌──< 0x140007677      jnz   0x140007683
  ────────> 0x140007679      mov   ebx, 0xc0000295
  ────────< 0x14000767e      jmp   0x140007858
  │││││└──> 0x140007683      cmp   r8d, 0x30                           ; '0' ; 48
  │││││┌──< 0x140007687      jb    0x1400077a0
  │││││││   0x14000768d      mov   edx, dword [rsi+0x18]
  ────────> 0x140007690      mov   rcx, qword [rdi+0x08]
  │││││││   0x140007694      cmp   dword [rcx], edx
  ────────< 0x140007696      jnz   0x1400076b0
  │││││││   0x140007698      mov   eax, dword [rsi+0x1c]
  │││││││   0x14000769b      cmp   dword [rcx+0x04], eax
  ────────< 0x14000769e      jnz   0x1400076b0
  │││││││   0x1400076a0      mov   eax, dword [rsi+0x20]
  │││││││   0x1400076a3      cmp   dword [rcx+0x08], eax
  ────────< 0x1400076a6      jnz   0x1400076b0
  │││││││   0x1400076a8      mov   eax, dword [rsi+0x24]
  │││││││   0x1400076ab      cmp   dword [rcx+0x0c], eax
  ────────< 0x1400076ae      jz    0x1400076b9
  ────────> 0x1400076b0      mov   rdi, qword [rdi+0x10]
  │││││││   0x1400076b4      test  rdi, rdi
  ────────< 0x1400076b7      jnz   0x140007690
  ────────> 0x1400076b9      test  rdi, rdi
  ────────< 0x1400076bc      jz    0x140007679
  │││││││   0x1400076be      cmp   r9b, 0x05                           ; 5
  ────────< 0x1400076c2      jnz   0x1400076d3
  │││││││   0x1400076c4      mov   dword [rdi+0x2c], ebx
  │││││││   0x1400076c7      mov   qword [rdi+0x18], rbx
  │││││││   0x1400076cb      mov   byte [rdi+0x29], bl
  ────────< 0x1400076ce      jmp   0x140007858
  ────────> 0x1400076d3      mov   rax, qword [rsi+0x08]
  │││││││   0x1400076d7      mov   qword [rdi+0x18], rax
  │││││││   0x1400076db      cmp   dword [0x140004128], 0x02           ; [0x140004128:4]=0
  │││││││   0x1400076e2      mov   qword [rsp+0x30], rax
  ────────< 0x1400076e7      jnz   0x14000774b
  │││││││   0x1400076e9      mov   rax, qword [0x140004100]            ; [0x140004100:8]=0
  │││││││   0x1400076f0      lea   r9, qword [rsp+0x98]
  │││││││   0x1400076f8      mov   r8d, 0x04
  │││││││   0x1400076fe      mov   qword [rsp+0x20], rsi
  │││││││   0x140007703      lea   rdx, qword [rsp+0x70]
  │││││││   0x140007708      lea   ecx, qword [r8-0x01]
  │││││││   0x14000770c      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
  │││││││   0x140007712      test  eax, eax
  ────────< 0x140007714      jnz   0x14000771d
  │││││││   0x140007716      mov   al, byte [rsp+0x70]
  │││││││   0x14000771a      mov   byte [rdi+0x29], al
  ────────> 0x14000771d      mov   rax, qword [0x140004100]            ; [0x140004100:8]=0
  │││││││   0x140007724      lea   rdx, qword [rdi+0x2c]
  │││││││   0x140007728      mov   ecx, 0x02
  │││││││   0x14000772d      mov   qword [rsp+0x20], rsi
  │││││││   0x140007732      lea   r9, qword [rsp+0x98]
  │││││││   0x14000773a      lea   r8d, qword [rcx+0x02]
  │││││││   0x14000773e      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
  │││││││   0x140007744      mov   ebx, eax
  ────────< 0x140007746      jmp   0x140007858
  ────────> 0x14000774b      mov   eax, dword [rsp+0x34]
  │││││││   0x14000774f      mov   dword [rdi+0x2c], eax
  │││││││   0x140007752      mov   al, byte [rsp+0x32]
  │││││││   0x140007756      mov   byte [rdi+0x29], al
  ────────< 0x140007759      jmp   0x140007858
  ││││││└─> 0x14000775e      sub   edx, 0x06
  ││││││┌─< 0x140007761      jz    0x140007858
  │││││││   0x140007767      sub   edx, 0x01
  ────────< 0x14000776a      jz    0x140007858
  │││││││   0x140007770      sub   edx, 0x01
  ────────< 0x140007773      jz    0x14000777f
  └└└└└───> 0x140007775      mov   ebx, 0xc0000010
      ┌───< 0x14000777a      jmp   0x140007858
  ────────> 0x14000777f      mov   rbp, qword [rsp+0x90]
      │││   0x140007787      mov   edi, ebx
      │││   0x140007789      mov   rax, rbp
      │││   0x14000778c      mov   r15, qword [rbp+0x20]
     ┌────> 0x140007790      mov   rax, qword [rax+0x10]
     ╎│││   0x140007794      inc   edi
     ╎│││   0x140007796      test  rax, rax
     └────< 0x140007799      jnz   0x140007790
      │││   0x14000779b      cmp   edi, 0x3f                           ; '?' ; 63
     ┌────< 0x14000779e      jbe   0x1400077aa
     ││└──> 0x1400077a0      mov   ebx, 0xc000000d
     ││┌──< 0x1400077a5      jmp   0x140007858
     └────> 0x1400077aa      mov   r14d, edi
      │││   0x1400077ad      shl   r14d, 0x05
      │││   0x1400077b1      add   r14d, 0x18                          ; 24
      │││   0x1400077b5      test  r15, r15
     ┌────< 0x1400077b8      jnz   0x1400077bf
     ││││   0x1400077ba      mov   r12d, ebx
    ┌─────< 0x1400077bd      jmp   0x1400077cd
    │└────> 0x1400077bf      mov   r12d, r14d
    │ │││   0x1400077c2      movzx r14d, word [r15]
    │ │││   0x1400077c6      add   r14d, 0x02
    │ │││   0x1400077ca      add   r14d, r12d
    └─────> 0x1400077cd      cmp   r14d, r8d
     ┌────< 0x1400077d0      jnbe  0x140007842
     ││││   0x1400077d2      mov   r8d, r8d
     ││││   0x1400077d5      xor   edx, edx
     ││││   0x1400077d7      mov   rcx, rsi
     ││││   0x1400077da      call  0x140002900
     ││││   0x1400077df      mov   dword [rsi], r14d
     ││││   0x1400077e2      mov   dword [rsi+0x08], r12d
     ││││   0x1400077e6      mov   dword [rsi+0x10], edi
     ││││   0x1400077e9      test  r15, r15
    ┌─────< 0x1400077ec      jz    0x14000780c
    │││││   0x1400077ee      movzx eax, word [r15]
    │││││   0x1400077f2      mov   ecx, r12d
    │││││   0x1400077f5      add   rcx, rsi
    │││││   0x1400077f8      mov   word [rcx], ax
    │││││   0x1400077fb      add   rcx, 0x02
    │││││   0x1400077ff      movzx r8d, word [r15]
    │││││   0x140007803      mov   rdx, qword [r15+0x08]
    │││││   0x140007807      call  0x140002640
    └─────> 0x14000780c      test  edi, edi
    ┌─────< 0x14000780e      jz    0x14000783c
    │││││   0x140007810      add   rsi, 0x28                           ; 40
    │││││   0x140007814      mov   ecx, edi
   ┌──────> 0x140007816      mov   rax, qword [rbp+0x08]
   ╎│││││   0x14000781a      movups xmm0, xmmword [rax]
   ╎│││││   0x14000781d      mov   dword [rsi], 0x81000                ; [0x81000:4]=-1
   ╎│││││   0x140007823      lea   rsi, qword [rsi+0x20]
   ╎│││││   0x140007827      movdqu xmmword [rsi-0x30], xmm0
   ╎│││││   0x14000782c      mov   byte [rbp+0x29], bl
   ╎│││││   0x14000782f      mov   dword [rbp+0x2c], ebx
   ╎│││││   0x140007832      mov   rbp, qword [rbp+0x10]
   ╎│││││   0x140007836      sub   rcx, 0x01
   └──────< 0x14000783a      jnz   0x140007816
    └─────> 0x14000783c      mov   dword [r13], r14d
    ┌─────< 0x140007840      jmp   0x140007858
    │└────> 0x140007842      mov   ebx, 0xc0000023                     ; '#'
    │ │││   0x140007847      cmp   r8d, 0x04                           ; 4
    │┌────< 0x14000784b      jb    0x140007858
    │││││   0x14000784d      mov   dword [rsi], r14d
    │││││   0x140007850      mov   dword [r13], 0x04
  ──└└└└└─> 0x140007858      lea   r11, qword [rsp+0x40]
            0x14000785d      mov   eax, ebx
            0x14000785f      mov   rbx, qword [r11+0x38]
            0x140007863      mov   rbp, qword [r11+0x40]
            0x140007867      mov   rsi, qword [r11+0x48]
            0x14000786b      mov   rsp, r11
            0x14000786e      pop   r15
            0x140007870      pop   r14
            0x140007872      pop   r13
            0x140007874      pop   r12
            0x140007876      pop   rdi
            0x140007877      ret
            0x140007878      int3
            0x140007879      int3
            0x14000787a      int3
            0x14000787b      int3
            0x14000787c      int3
            0x14000787d      int3
            0x14000787e      int3
            0x14000787f      int3
            0x140007880      mov   r11, rsp
            0x140007883      mov   qword [r11+0x08], rbx
            0x140007887      mov   qword [r11+0x10], rsi
            0x14000788b      push  rdi
            0x14000788c      sub   rsp, 0x60
            0x140007890      and   qword [r11-0x18], 0x00
            0x140007895      mov   rax, r9
            0x140007898      mov   rdi, rdx
            0x14000789b      mov   rsi, rcx
            0x14000789e      mov   ebx, dword [rsp+0x90]
            0x1400078a5      lea   rcx, qword [0x140004030]            ; "0@"
            0x1400078ac      cmp   qword [0x140004030], rcx            ; [0x140004030:8]=0x140004030
        ┌─< 0x1400078b3      jz    0x1400078f1
        │   0x1400078b5      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
        │   0x1400078bc      mov   r9d, 0x0b                           ; 0xb ; 11
        │   0x1400078c2      mov   dword [rsp+0x48], ebx
        │   0x1400078c6      mov   dword [rsp+0x40], eax
        │   0x1400078ca      lea   rax, qword [0x140003190]
        │   0x1400078d1      mov   dword [r11-0x30], r8d
        │   0x1400078d5      mov   rcx, qword [rcx+0x40]
        │   0x1400078d9      lea   r8d, qword [r9-0x07]
        │   0x1400078dd      mov   qword [r11-0x38], rdx
        │   0x1400078e1      mov   dl, r8b
        │   0x1400078e4      mov   qword [r11-0x40], rsi
        │   0x1400078e8      mov   qword [r11-0x48], rax
        │   0x1400078ec      call  0x140001cf0
        └─> 0x1400078f1      sub   ebx, 0x322400
        ┌─< 0x1400078f7      jz    0x140007941
        │   0x1400078f9      sub   ebx, 0x04
       ┌──< 0x1400078fc      jz    0x140007934
       ││   0x1400078fe      sub   ebx, 0x04
      ┌───< 0x140007901      jz    0x140007922
      │││   0x140007903      cmp   ebx, 0x04                           ; 4
     ┌────< 0x140007906      jz    0x140007910
     ││││   0x140007908      mov   r8d, 0xc0000010
    ┌─────< 0x14000790e      jmp   0x140007954
    │└────> 0x140007910      lea   r8, qword [rsp+0x50]
    │ │││   0x140007915      mov   rdx, rdi
    │ │││   0x140007918      mov   rcx, rsi
    │ │││   0x14000791b      call  0x140006a4c
    │┌────< 0x140007920      jmp   0x140007951
    ││└───> 0x140007922      lea   r8, qword [rsp+0x50]
    ││ ││   0x140007927      mov   rdx, rdi
    ││ ││   0x14000792a      mov   rcx, rsi
    ││ ││   0x14000792d      call  0x14000670c
    ││┌───< 0x140007932      jmp   0x140007951
    │││└──> 0x140007934      mov   rdx, rdi
    │││ │   0x140007937      mov   rcx, rsi
    │││ │   0x14000793a      call  0x14000687c
    │││┌──< 0x14000793f      jmp   0x140007951
    ││││└─> 0x140007941      lea   r8, qword [rsp+0x50]
    ││││    0x140007946      mov   rdx, rdi
    ││││    0x140007949      mov   rcx, rsi
    ││││    0x14000794c      call  0x140006560
    │└└└──> 0x140007951      mov   r8d, eax
    └─────> 0x140007954      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x14000795b      mov   rdx, rdi
            0x14000795e      mov   r9, qword [rsp+0x50]
            0x140007963      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x14000796a      mov   rax, qword [rax+0x848]
            0x140007971      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140007977      mov   rbx, qword [rsp+0x70]
            0x14000797c      mov   rsi, qword [rsp+0x78]
            0x140007981      add   rsp, 0x60
            0x140007985      pop   rdi
            0x140007986      ret
            0x140007987      int3
            0x140007988      push  rbx
            0x14000798a      sub   rsp, 0x90
            0x140007991      xor   edx, edx
            0x140007993      mov   rbx, rcx
            0x140007996      lea   rcx, qword [rsp+0x30]
            0x14000799b      lea   r8d, qword [rdx+0x60]
            0x14000799f      call  0x140002900
            0x1400079a4      or    dword [rsp+0x80], 0xffffffff        ; [0xff:4]=-1 ; 255
            0x1400079ac      lea   rax, qword [0x140007880]            ; "L\x8b\xdcI\x89[\bI\x89s\U00000010WH\x83\xec`I\x83c\xe8"
            0x1400079b3      mov   qword [rsp+0x58], rax
            0x1400079b8      lea   rcx, qword [rsp+0xa8]
            0x1400079c0      lea   rax, qword [0x140001ca0]
            0x1400079c7      mov   dword [rsp+0x30], 0x60              ; '`'
                                                                       ; [0x60:4]=-1 ; 96
            0x1400079cf      mov   qword [rsp+0x68], rax
            0x1400079d4      lea   r8, qword [rsp+0x30]
            0x1400079d9      mov   rax, qword [0x140004358]            ; [0x140004358:8]=0
            0x1400079e0      xor   r9d, r9d
            0x1400079e3      mov   dword [rsp+0x38], 0x02
            0x1400079eb      mov   rdx, rbx
            0x1400079ee      mov   byte [rsp+0x3d], 0x01
            0x1400079f3      mov   dword [rsp+0x34], 0x02
            0x1400079fb      mov   rax, qword [rax+0x4c0]
            0x140007a02      mov   qword [rsp+0x20], rcx
            0x140007a07      mov   rcx, qword [0x140004360]            ; [0x140004360:8]=0
            0x140007a0e      call  qword [0x1400030b8]                 ; [0x1400030b8:8]=0x140002600 "......................ff..."
            0x140007a14      mov   ebx, eax
            0x140007a16      test  eax, eax
        ┌─< 0x140007a18      jns   0x140007a5d
        │   0x140007a1a      lfence
        │   0x140007a1d      lea   rax, qword [0x140004030]            ; "0@"
        │   0x140007a24      cmp   qword [0x140004030], rax            ; [0x140004030:8]=0x140004030
       ┌──< 0x140007a2b      jz    0x140007a59
       ││   0x140007a2d      mov   rcx, qword [0x140004028]            ; [0x140004028:8]=0x140004028
       ││   0x140007a34      lea   rax, qword [0x140003190]
       ││   0x140007a3b      mov   r9d, 0x0a
       ││   0x140007a41      mov   dword [rsp+0x28], ebx
       ││   0x140007a45      mov   dl, 0x02
       ││   0x140007a47      mov   qword [rsp+0x20], rax
       ││   0x140007a4c      mov   rcx, qword [rcx+0x40]
       ││   0x140007a50      lea   r8d, qword [r9-0x06]
       ││   0x140007a54      call  0x140001438
       └──> 0x140007a59      mov   eax, ebx
       ┌──< 0x140007a5b      jmp   0x140007a60
       │└─> 0x140007a5d      lfence
       └──> 0x140007a60      add   rsp, 0x90
            0x140007a67      pop   rbx
            0x140007a68      ret
            0x140007a69      int3
            0x140007a6a      int3
            0x140007a6b      int3
            0x140007a6c      int3
            0x140007a6d      int3
            0x140007a6e      int3
            0x140007a6f      int3
            0x140007a70      add   byte [r8], sil
        ┌─< 0x140007a74      jo    0x140007a76
        └─> 0x140007a76      push  rbx
            0x140007a77      add   byte [rbp], ah
        ┌─< 0x140007a7a      jz    0x140007a7c
       ┌└─> 0x140007a7c      jz    0x140007a7e
       └──> 0x140007a7e      imul  eax, dword [rax], 0x67006e
        ┌─< 0x140007a84      jnb   0x140007a86
        └─> 0x140007a86      add   byte [rax], al
            0x140007a88      int3
            0x140007a89      int3
            0x140007a8a      int3
            0x140007a8b      int3
            0x140007a8c      int3
            0x140007a8d      int3
            0x140007a8e      int3
            0x140007a8f      int3
            0x140007a90      push  rax
            0x140007a91      add   byte [rbx], dh
            0x140007a94      add   byte [r13], r12b
        ┌─< 0x140007a98      jz    0x140007a9a
        └─> 0x140007a9a      push  rsi
            0x140007a9b      add   byte [rbp], ah
        ┌─< 0x140007a9e      jb    0x140007aa0
       ┌└─> 0x140007aa0      jnb   0x140007aa2
       └──> 0x140007aa2      imul  eax, dword [rax], 0x6e006f
            0x140007aa8      add   byte [rax], al
            0x140007aaa      int3
            0x140007aab      int3
            0x140007aac      int3
            0x140007aad      int3
            0x140007aae      int3
            0x140007aaf      int3
            0x140007ab0      push  rdi
            0x140007ab1      add   byte [rbp], ch
            0x140007ab4      imul  eax, dword [rax], 0x720054
            0x140007aba      invalid
            0x140007abb      add   byte [rbx], ah
            0x140007abe      add   byte gs:[rbp], cl
            0x140007ac2      add   byte gs:[rbx], dh
        ┌─< 0x140007ac6      jnb   0x140007ac8
        └─> 0x140007ac8      invalid
            0x140007ac9      add   byte [rdi], ah
            0x140007acc      add   byte gs:[rax], al
            0x140007acf      add   byte [rdi], dl
            0x140007ad2      insd
            0x140007ad3      add   byte [rcx], ch
            0x140007ad6      push  rcx
            0x140007ad7      add   byte [rbp], dh
            0x140007ada      add   byte gs:[rdx], dh
        ┌─< 0x140007ade      jns   0x140007ae0
        └─> 0x140007ae0      push  rsp
            0x140007ae1      add   byte [rdx], dh
            0x140007ae4      invalid
            0x140007ae5      add   byte [rbx], ah
            0x140007ae8      add   byte gs:[rcx], cl
            0x140007aec      outsb
            0x140007aed      add   byte [rsi], ah
            0x140007af0      outsd
            0x140007af1      add   byte [rdx], dh
            0x140007af4      insd
            0x140007af5      add   byte [rcx], ah
        ┌─< 0x140007af8      jz    0x140007afa
        └─> 0x140007afa      imul  eax, dword [rax], 0x6e006f
            0x140007b00      add   byte [rax], al
            0x140007b02      int3
            0x140007b03      int3
            0x140007b04      int3
            0x140007b05      int3
            0x140007b06      int3
            0x140007b07      int3
            0x140007b08      int3
            0x140007b09      int3
            0x140007b0a      int3
            0x140007b0b      int3
            0x140007b0c      int3
            0x140007b0d      int3
            0x140007b0e      int3
            0x140007b0f      int3
            0x140007b10      add   byte [r8+rax*1+0x77], r14b
            0x140007b15      add   byte [rdx], dl
            0x140007b18      add   byte gs:[rdi], ah
            0x140007b1c      imul  eax, dword [rax], 0x740073
            0x140007b22      add   byte gs:[rdx], dh
            0x140007b26      add   byte [r8+r8*1+0x61], bpl
            0x140007b2b      add   byte [rbx], dh
        ┌─< 0x140007b2e      jnb   0x140007b30
        └─> 0x140007b30      imul  eax, dword [rax], 0x500063
        ┌─< 0x140007b36      jb    0x140007b38
        └─> 0x140007b38      outsd
            0x140007b39      add   byte [rsi], dh
            0x140007b3c      imul  eax, dword [rax], 0x650064
        ┌─< 0x140007b42      jb    0x140007b44
        └─> 0x140007b44      add   byte [rax], al
            0x140007b46      int3
            0x140007b47      int3
            0x140007b48      int3
            0x140007b49      int3
            0x140007b4a      int3
            0x140007b4b      int3
            0x140007b4c      int3
            0x140007b4d      int3
            0x140007b4e      int3
            0x140007b4f      int3
            0x140007b50      add   byte [r8+rax*1+0x77], r14b
            0x140007b55      add   byte [rbp], dl
            0x140007b58      outsb
            0x140007b59      add   byte [rdx], dh
            0x140007b5c      add   byte gs:[rdi], ah
            0x140007b60      imul  eax, dword [rax], 0x740073
            0x140007b66      add   byte gs:[rdx], dh
            0x140007b6a      add   byte [rax], al
            0x140007b6c      add   byte [rax], al
            0x140007b6e      add   byte [rax], al
            0x140007b70      add   byte [rax], al
            0x140007b72      add   byte [rax], al
            0x140007b74      add   byte [rax], al
            0x140007b76      add   byte [rax], al
            0x140007b78      add   byte [rax], al
            0x140007b7a      add   byte [rax], al
            0x140007b7c      add   byte [rax], al
            0x140007b7e      add   byte [rax], al
            0x140007b80      add   byte [rax], al
            0x140007b82      add   byte [rax], al
            0x140007b84      add   byte [rax], al
            0x140007b86      add   byte [rax], al
            0x140007b88      add   byte [rax], al
            0x140007b8a      add   byte [rax], al
            0x140007b8c      add   byte [rax], al
            0x140007b8e      add   byte [rax], al
            0x140007b90      add   byte [rax], al
            0x140007b92      add   byte [rax], al
            0x140007b94      add   byte [rax], al
            0x140007b96      add   byte [rax], al
            0x140007b98      add   byte [rax], al
            0x140007b9a      add   byte [rax], al
            0x140007b9c      add   byte [rax], al
            0x140007b9e      add   byte [rax], al
            0x140007ba0      add   byte [rax], al
            0x140007ba2      add   byte [rax], al
            0x140007ba4      add   byte [rax], al
            0x140007ba6      add   byte [rax], al
            0x140007ba8      add   byte [rax], al
            0x140007baa      add   byte [rax], al
            0x140007bac      add   byte [rax], al
            0x140007bae      add   byte [rax], al
            0x140007bb0      add   byte [rax], al
            0x140007bb2      add   byte [rax], al
            0x140007bb4      add   byte [rax], al
            0x140007bb6      add   byte [rax], al
            0x140007bb8      add   byte [rax], al
            0x140007bba      add   byte [rax], al
            0x140007bbc      add   byte [rax], al
            0x140007bbe      add   byte [rax], al
            0x140007bc0      add   byte [rax], al
            0x140007bc2      add   byte [rax], al
            0x140007bc4      add   byte [rax], al
            0x140007bc6      add   byte [rax], al
            0x140007bc8      add   byte [rax], al
            0x140007bca      add   byte [rax], al
            0x140007bcc      add   byte [rax], al
            0x140007bce      add   byte [rax], al
            0x140007bd0      add   byte [rax], al
            0x140007bd2      add   byte [rax], al
            0x140007bd4      add   byte [rax], al
            0x140007bd6      add   byte [rax], al
            0x140007bd8      add   byte [rax], al
            0x140007bda      add   byte [rax], al
            0x140007bdc      add   byte [rax], al
            0x140007bde      add   byte [rax], al
            0x140007be0      add   byte [rax], al
            0x140007be2      add   byte [rax], al
            0x140007be4      add   byte [rax], al
            0x140007be6      add   byte [rax], al
            0x140007be8      add   byte [rax], al
            0x140007bea      add   byte [rax], al
            0x140007bec      add   byte [rax], al
            0x140007bee      add   byte [rax], al
            0x140007bf0      add   byte [rax], al
            0x140007bf2      add   byte [rax], al
            0x140007bf4      add   byte [rax], al
            0x140007bf6      add   byte [rax], al
            0x140007bf8      add   byte [rax], al
            0x140007bfa      add   byte [rax], al
            0x140007bfc      add   byte [rax], al
            0x140007bfe      add   byte [rax], al
