        global  _ft_strcpy
        
        section .text
_ft_strcpy:
        test rdi, rdi
        jz  end_ft_strcpy

        test rsi, rsi
        jz  end_ft_strcpy
copy_string:

        mov al, byte[rsi]
        test al, al
        jz  end_ft_strcpy

        mov byte [rdi], al
        inc rdi
        inc rsi
        jmp copy_string

end_ft_strcpy:
        mov byte[rdi], 0
        ret

