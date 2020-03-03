.model small

.data

msg dw 'Hello word$'

.code

main proc
    mov ax,@data                    ; transferindo os dados para o segmento de dados
    mov ds, ax
    
    lea dx, msg                     ; lendo ponteiro do offset de msg
    
    mov ah, 9                       ; service code para saída de string
    int 21h
    
    main endp
end
