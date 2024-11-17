%include 'in_out.asm' ; подключение внешнего файла
SECTION .data
msg: DB 'Введите значение переменной х: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80 ; Переменная, значение к-рой будем вводить с клавиатуры
SECTION .text
GLOBAL _start
_start:
; --- Вычисление выражения
mov eax,msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x ;
call atoi ;
xor edx,edx;
mov ebx,3 ;
div ebx ;
add eax,5 ;
mov ebx,7
mul ebx ;
mov edi,eax ; запись результата вычисления в 'edi'
; -- Вывод результата на экран
mov eax,rem ; вызов подпрограммы печати
call sprint ; сообщения 'Результат: '
mov eax,edi ; вызов подпрограммы печати значения
call iprintLF ; из 'edi' в виде символов
call quit ; вызов подпрограммы завершения
