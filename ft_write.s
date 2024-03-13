        global  _ft_write

        section .text
_ft_write:
        push rbp
        mov  rbp, rsp

        mov rax, rdi
        
        test rdx, rdx
        jz end_ft_write

        mov rax, 0x2000004
        syscall

end_ft_write:
    pop rbp
    ret