;;;;;;; input string ';;;;;;;;;;;;'
get_string:
  mov ah,0eh

  .loop3:
    lodsb
    cmp al,0
    je loop
    int 10h
   jmp .loop3

    loop:

      mov ah,00h
      int 16h
      mov [si+27], al
      cmp al, 0dh
      je done
      mov ah,0eh
      int 10h
      inc si
      jmp loop

  done:
    mov cl,0

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;Output string;;;;;;;;;;;;;;;

print_string:
  mov ah,0eh

  .loop2:
    lodsb
    cmp al,0
    je halt
    int 10h
    jmp .loop2

  halt:
    cli
    hlt

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;; endl ;;;;;;;;;;;;;;;;;;;;;;;;;
next_line:

  mov ah,0eh
  mov al,0dh
  int 10h
  mov al,0ah
  int 10h

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
