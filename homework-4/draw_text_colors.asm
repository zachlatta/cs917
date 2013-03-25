title Draw Text Colors                  (draw_text_colors.asm)

INCLUDE Irvine32.inc
.data
string byte "This string is colored green with a black background.",0dh,0ah,0

.code
main proc
	mov ax,green + (black * 16)
    call SetTextColor

    mov edx,offset string
    call WriteString

    exit
main endp

end main