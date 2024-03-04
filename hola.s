            global  _main
            extern  _puts

            section .text
_main:
            sub     rsp, 8
            mov     rbx, rdi
            lea     rdi, [rel message]
            call    _puts
            mov     rdi, rbx
            add     rsp, 8
            ret

            section .data
message:    db      "Hola, mundo", 0