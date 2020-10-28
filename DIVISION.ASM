.model small
.data
a dw 1200
b db 6
quot db ?
rem db ?
.code
mov ax,@data
mov ds,ax
mov al,b
div a
mov quot,al
mov rem,ah
mov ah,4ch
int 21h
end

