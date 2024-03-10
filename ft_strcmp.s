        global  _ft_strcmp

        section .text
_ft_strcmp:
        test    rdi, rdi
        jz      end_ft_strcmp

        test    rsi, rsi
        jz      end_ft_strcmp
compare_string:
        mov     al, byte[rdi]
        mov     bl, byte[rsi]

        cmp     al, bl

        je

        inc     rdi
        inc     rsi
end_ft_strcmp:
        ret