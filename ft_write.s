        global  _ft_write

        section .text
_ft_write:
        test rsi, rsi
        jz      end_ft_write
        mov rax, 0
        syscall

        mov rax, 60
        xor rdi, rdi
        syscall

end_ft_write:
    ret