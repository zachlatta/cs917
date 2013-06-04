title Counting Array Values            (counting_array_values.asm)

include Irvine32.inc
.data
array dword ?

.code
main proc
    call Randomize
    mov array, eax
    mov ecx, 50
    mov ebx, 0
    jmp write

write:
    call Random32
    call WriteInt
    
    .if eax < 0
        add ebx, 1
    .endif

    loop write

    mov ebx, eax
    call WriteInt
    exit

main endp

end main
