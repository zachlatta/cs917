title Str_concat Procedure          (str_concat_procedure.asm)

include Irvine32.inc

Str_concat proto,
  target:ptr byte,
  source:ptr byte

.data
target_str byte "abcde",10 dup(0)
source_str byte "fgh",0

.code
main proc
  call Clrscr
  invoke Str_concat, addr target_str, addr source_str

  mov edx, offset target_str
  call WriteString
  call Crlf

  exit
main endp

; Concatenates two strings(hopefully).
Str_concat proc uses eax ebx ecx esi edi,
  target:ptr byte,
  source:ptr byte

  mov eax, 5
  mov ecx, sizeof source
  mov esi, source
  mov edi, target

l1:
  add edi, eax
  mov ebx, [esi]
  mov [edi], ebx

  add eax, 1
  add esi, 1
  loop l1

  ret
Str_concat endp

end main