        global  _ft_read

        section .text
_ft_read:
        push    rbp
        mov     rbp, rsp

        mov     rax, rdi

        test    rdx, rdx
        jz      end_ft_read

        mov     rax, 0x2000003
        syscall

end_ft_read:
    pop rbp
    ret