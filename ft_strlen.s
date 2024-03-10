        global  _ft_strlen
        
        section .text
_ft_strlen:
        xor rax, rax

find_length:
        cmp byte[rdi], 0
        je  end_ft_strlen

        inc rax
        inc rdi
        jmp find_length

end_ft_strlen:
        ret

