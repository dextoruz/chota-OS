get_string:
mov ah,0eh

  .loop3:
    lodsb
    cmp al,0
    je next
    int 10h
  jmp .loop3

  next:
    mov cl, 0
    .loop:
      mov ah,00h
      int 16h
      mov [si+27], al
      mov ah,0eh
      int 10h
      inc si
      cmp cl,15
      je .done
      inc cl
      jmp .loop
  .done:
    mov cl,0
ret

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

next_line:
  mov ah,0eh
  mov al,0dh
  int 10h
  mov al,0ah
  int 10h
ret
