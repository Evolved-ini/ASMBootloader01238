[bits 16]    
[org 0x7c00]
init: 
  mov si, msg  
  mov ah, 0x0e 
print_char:
  lodsb     
  cmp al, 0 
  je done   
  int 0x10  
  jmp print_char
done:
  hlt ; stop execution

msg: db "Hello world!", 0 

times 510-($-$$) db 0           
dw 0xaa55             
