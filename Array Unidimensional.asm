name 'Array unidimensional'

.model small

.data

array dw '1','5','2','4','3'   ;usamos para o exemplo um array pronto, mas poderia ser um array montado com PUSH
msg db 'O maior valor e de: $'
max dw  '0'

.code

main proc
    mov ax, @data
    mov ds, ax
    mov bx, 0
    mov cx, 6   
    lea si, array
    
for:
    cmp cx, 0
    je end
    mov dx, si                      ; neste loop é feito a comparação do array com o valor da varíavel max
    mov ax, max                     ; caso o valor do registrador CX zere a instrução salta para o LABEL
    inc si                          ; caso o valor do registrador DX seja maior (ABOVE) que ax, salta para LABEL maior
    cmp dx, ax
    ja maior                        
    loop for
maior:
    mov max, dx                     ; transferindo valor maior para max e retornando para o loop
    jmp for
end:
    lea dx, msg
    mov ah, 9
    int 21h
    mov dx, max                     ; impressão do caracter númerico em tela, pegando o valor em ASCII
    add dx, 48
    mov ah, 2
    int 21h
    mov ah,4ch                      ; devolução do controle do processador ao S.O.
    int 21h    
    main endp
end
