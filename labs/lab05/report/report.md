---
## Front matter
title: "Шаблон отчёта по лабораторной работе"
subtitle: "Простейший вариант"
author: "Дмитрий Сергеевич Кулябов"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---
# Цель работы
Целью данной лабораторной работы является приобретение практических
навыков работы в Midnight Commander, освоение инструкций языка ассемблера
mov и int.

# Задание
1. Основы работы с mc
2. Структура программы на языке ассемблера NASM
3. Подключение внешнего файла
4. Выполнение заданий для самостоятельной работы

# Теоретическое введение
Midnight Commander (или просто mc) — это программа, которая позволяет
просматривать структуру каталогов и выполнять основные операции по управлению файловой системой, т.е. mc является файловым менеджером. Midnight
Commander позволяет сделать работу с файлами более удобной и наглядной. Программа на языке ассемблера NASM, как правило, состоит из трёх секций: секция
кода программы (SECTION .text), секция инициированных (известных во время
компиляции) данных (SECTION .data) и секция неинициализированных данных
(тех, под которые во время компиляции только отводится память, а значение
присваивается в ходе выполнения программы) (SECTION .bss). Для объявления
инициированных данных в секции .data используются директивы DB, DW, DD,
DQ и DT, которые резервируют память и указывают, какие значения должны
храниться в этой памяти: - DB (define byte) — определяет переменную размером в 1 байт; - DW (define word) — определяет переменную размеров в 2 байта
(слово); - DD (define double word) — определяет переменную размером в 4 байта
(двойное слово); - DQ (define quad word) — определяет переменную размером в
8 байт (учетве- рённое слово); - DT (define ten bytes) — определяет переменную
размером в 10 байт. Директивы используются для объявления простых переменных и для объявления массивов. Для определения строк принято использовать
директиву DB в связи с особенностями хранения данных в оперативной памяти.
Инструкция языка ассемблера mov предназначена для дублирования данных
источника в приёмнике.
mov dst,src
Здесь операнд dst — приёмник, а src — источник. В качестве операнда могут
выступать регистры (register), ячейки памяти (memory) и непосредственные
значения (const). Инструкция языка ассемблера intпредназначена для вызова
прерывания с указанным номером.
int n
Здесь n — номер прерывания, принадлежащий диапазону 0–255. При программировании в Linux с использованием вызовов ядра sys_calls n=80h (принято
задавать в шестнадцатеричной системе счисления).


# Выполнение лабораторной работы
##4.1 Основы работы с mc

Открою Midnight Commander (рис. [-@fig:001]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:001 width=70%}

Перейду в каталог ~/work/arch-pc созданный при выполнении лабораторной работы №4 (рис. [-@fig:002]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:002 width=70%}

С помощью функциональной клавиши F7 создам папку lab05 и перейду в созданный каталог (рис. [-@fig:003]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:003 width=70%}

Пользуясь строкой ввода и командой touch создам файл lab5-1.asm (рис. [-@fig:004]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:004 width=70%}

С помощью функциональной клавиши F4 откройте файл lab5-1.asm для редактирования во встроенном редакторе (рис. [-@fig:005]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:005 width=70%}

Ввожу текст программы из листинга, сохраняю изменения и закрываюб файл (рис. [-@fig:006]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:006 width=70%}

С помощью функциональной клавиши F3 открою файл lab5-1.asm для просмотра.Убеждаюсь, что файл содержит текст программы (рис. [-@fig:007]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:007 width=70%}

Оттранслирую текст программы lab5-1.asm в объектный файл. Выполню компоновку объектного файла и запущу получившийся исполняемый файл. Программа выводит строку 'Введите строку:' и ожидает ввода с клавиатуры. На запрос введу мои ФИО (рис. [-@fig:008]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:008 width=70%}

## 4.3 Подключение внешнего файла

Скачиваю файл in_out.asm со страницы курса в ТУИС (рис. [-@fig:009]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:009 width=70%}

С помощью функциональной клавиши F5 копирую файл in_out.asm из каталога
Загрузки в созданный каталог lab05-1.asm (рис. [-@fig:010]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:010 width=70%}

Cоздам копию файла lab5-1.asm с именем lab5-2.asm. Выделю файл lab5-1.asm, введу имя файла lab5-2.asm (рис. [-@fig:011]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:011 width=70%}

Изменяю содержимое файла lab5-2.asm во встроенном редакторе nano, чтобы в программе использовались подпрограммы из внешнего файла in_out.asm (рис. [-@fig:012]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:012 width=70%}

Транслирую текст программы файла в объектный файл командой nasm -f elf
lab5-2.asm. Создался объектный файл lab5-2.o. Выполняю компоновку объектного
файла с помощью команды ld -m elf_i386 -o lab5-2 lab5-2.o Создался исполняемый
файл lab5-2. Запускаю исполняемый файл (рис. [-@fig:013]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:013 width=70%}

Разница между первым исполняемым файлом lab5-2 и вторым lab5-2-2 в том,
что запуск первого запрашивает ввод с новой строки, а программа, которая
исполняется при запуске второго, запрашивает ввод без переноса на новую
строку, потому что в этом заключается различие между подпрограммами sprintLF
и sprint (рис. [-@fig:016]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:016 width=70%}



Открываю файл lab5-2.asm для редактирования в nano функциональной клавишей F4. Изменяю в нем подпрограмму sprintLF на sprint. Сохраняю изменения и открываю файл для просмотра, чтобы проверить сохранение действий (рис. [-@fig:014]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:014 width=70%}

Снова транслирую файл, выполняю компоновку созданного объектного файла, запускаю новый исполняемый файл (рис. [-@fig:015]).

![Название рисунка](image/placeimg_800_600_tech.jpg){#fig:015 width=70%}





















# Выводы
При выполнении данной лабораторной работы я приобрела практические
навыки работы в Midnight Commander, а также освоила инструкции языка ассемблера mov и int.

# Список литературы

https://esystem.rudn.ru/pluginfile.php/2089085/mod_resource/content/0/Лабораторная%20работа%20№5.%20Основы%20работы%20с%20Midnight%20Commander%20%28%29.%20Структура%20программы%20на%20языке%20ассемблера%20NASM.%20Системные%20вызовы%20в%20ОС%20GNU%20Linux.pdf
