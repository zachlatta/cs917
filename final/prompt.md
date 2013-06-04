Str_concat Procedure (pg. 362, #2)
==================================

Write a procedure named **Str_concat** that concatenates a source string to the end of a target string. Sufficient space must exist in the target string to accommodate the new characters. Pass pointers to the source and target strings. Here is a sample call:

    .data
    targetStr BYTE "ABCDE",10 DUP(0)
    sourceStr BYTE "FGH",0
    .code
    INVOKE Str_concat, ADDR targetStr, ADDR sourceStr