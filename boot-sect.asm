BITS 16

jmp short _start


_start:

  mov ax, 07C0h
  mov ds, ax

  call next_line
  mov si, string3
  mov ah,0eh

  .loop2:
    lodsb
    cmp al,0
    je next11
    int 10h
    jmp .loop2

  next11:
  call next_line


  mov si, string	 ; Put string position into SI
  call next_line

  call get_string	 ; Call our string-printing routine
  call next_line
  call next_line

  mov si,string2
  call print_string
  call next_line
  call next_line

  jmp $
%include "partitionTable.asm"
%include "print2.asm"
string3 db "                    Booting OS...",0
string db '                    Who are you? ',0
string2 db "                    Hello!  ",0,0eh,0dh

times 510-($-$$) db 0
dw 0xAA55
