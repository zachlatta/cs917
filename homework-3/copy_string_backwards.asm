title Copying String Backwards              (copy_string_backwards.asm)

; Description: Copying string backwards using a loop
; 
; Revision date: 03.12.13

INCLUDE Irvine32.inc

.data
source  byte  "This is the source string", 0
target  byte  sizeof source dup('#')

.code
main PROC
    mov edi, sizeof source - 2D
    mov ecx, sizeof source

reverse_string:
    mov al, source[esi]
    mov target[edi], al
    inc esi
    dec edi
    loop reverse_string

	mov esi, offset target
	mov ebx, 1
	mov ecx, sizeof target
	call DumpMem

main endp
end main