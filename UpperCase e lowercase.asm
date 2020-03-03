name 'UpperCase e LowerCase'

.model small

.data

ini db 'Deseja maiuscula ou minuscula?$'
ini2 db 'Digite 1 para maiuscula e 2 para minuscula$'
error db 'Erro!!! Opcao invalida$'
msg db 'MeNsAgEm de TeStE$'


.code

main proc
    
    mov ax, @data
    mov ds, ax
    
inicio:
    lea dx, ini
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
     
    lea dx, ini2
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    
    mov ah, 1
    int 21h    
    
    cmp al, '1'
    je ma
    cmp al, '2'
    je mi
    jmp erro    

;Ao inves de ser realizado uma soma-subtracao por 32,
;usamos as portas lógicas and e or, pois apenas o terceiro
;bit de uma letra maiuscula e diferente de uma minuscula
ma:

    lea  si, msg

upper:
    cmp [si], '$'
    je impressao
    cmp [si], 'a'
    jb ok
    cmp [si], 'z'
    ja ok    
    and [si], 11011111b

ok: 
    inc si;
    jmp upper
    
mi:
    lea  si, msg

lower:
    cmp [si], '$'
    je impressao
    cmp [si], 'A'
    jb ok2
    cmp [si], 'Z'
    ja ok2        
    or [si], 00100000b

ok2: 
    inc si;
    jmp lower
impressao:
    
    mov ah, 2
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    
    lea dx, msg
    mov ah, 9 
    int 21h
    jmp end
erro: 

    mov ah, 2
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h

    lea dx, error
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, 10
    int 21h
    
    jmp inicio    
end:
    mov ah, 4ch
    int 21h     
    main endp
end
