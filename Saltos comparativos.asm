name 'Saltos comparativos'

.model small

.data

msg1 db 'Informe um numero$'
msg2 db 'Par$'
msg3 db 'Impar$'

.code

main proc
    mov ax, @data
    mov ds, ax    
    lea ax, msg1
	mov ah, 9
	int 21h
	mov ah, 1			; leitura do número informado pelo usuário
	int 21h
	mov bx, 2	
	mov dx, 0	
	div bx				; divisão por inteiro usando registrador BX
	cmp dx, 0			; uma vez que a divisão é inteira, o resto da divisão fica armazenado em DX
	je par				; comparação do resto da divisão para determinação de par ou ímpar		
	jmp impar	
par:                  
    lea dx, msg2
    mov ah, 9
    int 21h
    jmp fim
impar:    				; Obs.: o código aqui apresentado foi feito apenas para mostrar par ou ímpar baseado em divisão
    lea dx, msg3			; Porém o mesmo poderia ser feito de outra forma apenas testando o LSB(Less Significant Byte)
    mov ah, 9
    int 21h
    jmp fim
fim:	
	mov ah, 4ch
	int 21h
	ret		
	main endp
endp
