name 'Shift Left Shift Right'

.model small

.data

var1 db ?

msg db 'Informe um numero para a operacao bit a bit$'


.code

main proc  
    
    mov ax, @data
    mov ds, ax
    
    lea dx, msg
    
    mov ah, 9
    int 21h
    
    mov ah, 1                   ; recebendo o valor para a permuta de bits
    int 21h
    
    shl al, 1                   ; número de casas para a permuta
    
    
    
    mov dl, al
    
    mov ah, 2                   ; impressão da permuta
    int 21h
    
    
    sar al, 1                   ; nova permuta para direção contrária a fim de retornar o valor original
    
    mov dl, al
    
    mov ah, 2                   ; impressão de retorno
    int 21h    
    
    mov ah, 4ch                 ; Obs.: foi usado SAR ao invés do Shift Right para evitar ter que comparar o Carry flag para retornar o valor
    int 21h
    
    
    main endp
end
