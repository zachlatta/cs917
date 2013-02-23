TITLE Add and Subtract          (AddSub.asm)

; This program adds and subtracts 32-bit integers.

.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD
DumpRegs PROTO

.code
main PROC

    mov eax,50000h          ; EAX = 50000h
    mov ebx,30000h          ; EBX = 30000h
    mov ecx,43h             ; ECX = 43h

    sub eax,10000h          ; EAX = 40000h
    sub ebx,9000h           ; EBX = 27000h
    sub ecx,1h              ; ECX = 42h

    call DumpRegs

    INVOKE ExitProcess,0
main ENDP
END main