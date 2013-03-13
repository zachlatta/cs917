Write a program using the LOOP instruction with indirect addressing that copies a string from source to target, reversing the character order in the process. Use the following variables:

    source BYTE "This is the source string",0
    target BYTE SIZEOF source DUP('#')

Insert the following statements immediately after the loop to display the hexadecimal contents of the target string:

    mov esi,OFFSET target    ; offset of variable
    mov ebx,1                ; byte format
    mov ecx,SIZEOF target    ; counter
    call DumpMem

If your program works correctly, it will display the following sequence of hexadecimal bytes:

    67  6E  69  92  94  93  20  65  63  72  75  6F  73  20  65  68
    94  20  73  69  20  73  69  68  54

(The DumpMem procedure is explained in Section 5.3.2.)