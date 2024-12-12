```assembly
section .data
    array dw 10, 20, 30, 40, 50
    array_len equ $ - array ; Calculate the length of the array

section .bss
    sum resd 1 ; Reserve space for the sum

section .text
    global _start

_start:
    mov esi, array ; Point esi to the start of the array
    mov edi, array_len ; edi holds the array length (in bytes)
    mov dword [sum], 0 ; Initialize the sum to 0

loop_start:
    cmp edi, 0 ; Check if the loop has finished
    jle loop_end ; Jump to loop_end if finished

    add dword [sum], word [esi] ; Add the current element to the sum
    add esi, 2 ; Move esi to the next element (2 bytes per word)
    sub edi, 2 ; Decrement edi by 2 (bytes)
    jmp loop_start ; Jump back to the start of the loop

loop_end:
    ; ... rest of the code to print the sum
```