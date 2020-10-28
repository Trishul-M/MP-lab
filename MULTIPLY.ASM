.model small
.data
a db 5
b db 2
c dw ?
.code
mov ax,@data
mov ds,ax
mov al,a
mul b
mov c,ax
mov ah,4ch
int 21h
end
