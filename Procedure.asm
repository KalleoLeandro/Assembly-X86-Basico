name 'Procedure'

.model small

.data

.code

main proc
    mov dl, 65
    
    
while:
    call crlf
    mov ah, 2
    int 21h    
    inc dl
    cmp dl, 91
    je finish
    
    
    jmp while  
    
    
finish:
    mov ah, 4ch
    int 21h    
    
    
    main endp

crlf proc
    mov cl, dl
    mov ah, 2              ;CR = Carriage Return
    mov dl, 13             ;LF = Line Feed
    int 21h
    mov dl, 10
    int 21h
    mov dl, cl
    ret
    crlf endp

end
