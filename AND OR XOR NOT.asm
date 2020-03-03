name 'AND OR XOR NOT'

.model small

.data
       


.code

main proc
    
    mov al, 'a'
    mov ah, 2
    mov dl, al
    int 21h
    
    
    
    
    and al, 1010101b    ; aplicando lógica AND diretamente em AL
    
    mov ah, 2
    mov dl, al
    int 21h
    
        
    
    
    
    mov al, 'a'
    mov ah, 2
    mov dl, al
    int 21h    
    
   
    
    
    or al, 1010101b      ; aplicando lógica OR diretamente em AL
    
    mov ah, 2
    mov dl, al
    int 21h    
    
    
    mov al, 'a'
    mov ah, 2
    mov dl, al
    int 21h  
    
   
    
    xor al, 1010101b      ; aplicando lógica XOR diretamente em AL
    
    mov ah, 2
    mov dl, al
    int 21h
    
    
    
    mov al, 'a'
    mov ah, 2
    mov dl, al
    int 21h     

    
    not al                ; aplicando lógica de NEGACAO diretamente em AL, em valores numéricos o valor geralmente é negativado
                          ; verificar sempre a Carry Flag 
    mov ah, 2
    mov dl, al
    int 21h    
           
    
    mov ah, 4ch
    int 21h
    
    
        
    
    main endp
end
