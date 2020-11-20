.MODEL SMALL
DISPLAY MACRO MSG
LEA DX,MSG
MOV AH,09H
INT 21H    
ENDM
.DATA
MSG1 DB 0DH,0AH,"ENTER A STRING:-$"
MSG2 DB 0DH,0AH,"ENTERED  STRING IS A PALLINDROME:-$"
MSG3 DB 0DH,0AH,"ENTER A STRING ISN'T A PALLINDROME :-$"
STR DB 10H DUP(0)
REVSTR DB 10H DUP(0)
LEN DW 0
.CODE
mov ax,@data
mov ds,ax
display msg1
 mov si,00h
 back1:   mov ah,01h
          int 21h
  cmp al,0dh
  jz next
  mov str[si],al
  inc si
  inc len
  jmp back1
  next: mov si,00h
  mov di,00h
  add di,len
  dec di
  mov cx,len
  back2:
         mov al,str[si]
         mov revstr[di],al
         inc si
         dec di
   loop back2
   mov cx,len
   mov si,00h
   mov di,00h
   cld  
   back3:
         mov bl,str[si]
        cmp bl, revstr[di]
   jnz notpali
   display msg2
   jmp last
   notpali:  display msg3
   last: mov ah,4ch
   int 21h
    end