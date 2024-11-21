%include 'in_out.asm'
SECTION .data
msg_x: DB 'Введите значение переменной x: ', 0
msg_a: DB 'Введите значение переменной a: ', 0
rem: DB 'Результат: ', 0
SECTION .bss
x: RESB 80
a: RESB 80
SECTION .text
GLOBAL _start
_start:

; Ввод значения x
mov eax, msg_x
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi
mov edi, eax       ; сохраняем x в edi

; Ввод значения a
mov eax, msg_a
call sprint
mov ecx, a
mov edx, 80
call sread
mov eax, a
call atoi
mov esi, eax       ; сохраняем a в esi

; Проверка условия и вычисление результата
cmp edi, esi
jle set_x           ; если x <= a, переходим к присвоению результата x
add edi, esi        ; иначе вычисляем a + x
jmp output_result

set_x:
mov edi, edi        ; результат равен x

output_result:
mov eax, rem
call sprint
mov eax, edi
call iprintLF
call quit
