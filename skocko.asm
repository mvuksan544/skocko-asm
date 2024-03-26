%include "io.inc"
section .data
unos dd 0
counter dd 6
skck1 dd 0
skck2 dd 0
skck3 dd 0
skck4 dd 0  
section .text
global main
main:
    %macro PRINT_STRING_NEWLINE 1
    PRINT_STRING %1
    PRINT_CHAR 0xA
    %endmacro
    PRINT_STRING_NEWLINE "Skocko!!! WIP"
    PRINT_STRING_NEWLINE ""
    PRINT_STRING_NEWLINE "Unesite broj 1-20:"
    GET_DEC 4,unos
    mov eax, [unos]
    cmp eax,1
    jl unos_igre_greska
    cmp eax,20
    jg unos_igre_greska
    jmp unos_igre_dobar
    unos_igre_greska:
    PRINT_STRING_NEWLINE "Unet broj nije u opsegu 1-20"
    GET_DEC 4,unos
    mov eax, [unos]
    cmp eax,1
    jl unos_igre_greska
    cmp eax,20
    jg unos_igre_greska
    jmp unos_igre_dobar
    
    unos_igre_dobar:
    PRINT_STRING_NEWLINE ""
    PRINT_STRING "1-Skocko 2-Tref 3-Pik 4-Herz 5-Karo 6-Zvezda"
    cmp eax,1
    je slag_1
    cmp eax,2
    je slag_2
    cmp eax,3
    je slag_3
    cmp eax,4
    je slag_4
    cmp eax,5
    je slag_5
    cmp eax,6
    je slag_6
    cmp eax,7
    je slag_7
    cmp eax,8
    je slag_8
    cmp eax,9
    je slag_9
    cmp eax,10
    je slag_10
    cmp eax,11
    je slag_11
    cmp eax,12
    je slag_12
    cmp eax,13
    je slag_13
    cmp eax,14
    je slag_14
    cmp eax,15
    je slag_15
    cmp eax,16
    je slag_16
    cmp eax,17
    je slag_17
    cmp eax,18
    je slag_18
    cmp eax,19
    je slag_19
    cmp eax,20
    je slag_20
    
    slag_1:
    PRINT_STRING "1"
    mov eax,1
    mov ah,1
    mov al,3
    mov ax,4
    GET_DEC 4,skck1
    mov bh, [skck1]
    GET_DEC 4,skck2
    mov bl, [skck2]
    GET_DEC 4,skck3
    mov dh, [skck3]
    GET_DEC 4,skck4
    mov dl, [skck4]
    dec counter
    cmp counter,0
    je kraj
    jo slag_1
    
    
    
    slag_2:
    PRINT_STRING "2"
    slag_3:
    PRINT_STRING "3"
    slag_4:
    PRINT_STRING "4"
    slag_5:
    PRINT_STRING "5"
    slag_6:
    PRINT_STRING "6"
    slag_7:
    PRINT_STRING "7"
    slag_8:
    PRINT_STRING "8"    
    slag_9:
    PRINT_STRING "9"
    slag_10:
    PRINT_STRING "10"
    slag_11:
    PRINT_STRING "11"
    slag_12:
    PRINT_STRING "12"
    slag_13:
    PRINT_STRING "13"
    slag_14:
    PRINT_STRING "14"
    slag_15:
    PRINT_STRING "15"
    slag_16:
    PRINT_STRING "16"
    slag_17:
    PRINT_STRING "17"
    slag_18:
    PRINT_STRING "18"
    slag_19:
    PRINT_STRING "19"
    slag_20:
    PRINT_STRING "20"  
    
    
    kraj:
    xor eax, eax
    ret