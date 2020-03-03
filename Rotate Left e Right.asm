name 'Rotate Left e Right'

.model small

.data

.code

main proc
    
    mov dl, 49
    mov ah, 2
    int 21h
    rcl dl, 1
    
    mov ah, 2
    int 21h
              ; Rotacao Simples retornando valor 1 inicial, verificar Carry Flag em cada passagem
    rcr dl, 1
    mov ah, 2
    
    int 21h
end
