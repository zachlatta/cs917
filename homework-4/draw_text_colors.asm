title Draw Text Colors                  (draw_text_colors.asm)

include Irvine32.inc
.data

string byte "OpenGL is a graphics API.",0dh,0ah,0
count dword ?
background dword 0

.code
main proc
    call Clrscr

    mov ecx, 4

color_loop:
    mov count, ecx
    mov ecx, count
    mov eax, count + (black * 16)
    call SetTextColor

    mov edx, offset string
    call WriteString
    loop color_loop

    call Crlf
    exit
main endp

end main
