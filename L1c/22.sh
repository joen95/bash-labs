#!/bin/bash

# Получить список обычных файлов, находящихся
# рекурсивно в заданной директории и имеющих разрешение
# на исполнение для какой-то из групп пользователей,
# отличной от группы user. Для одного файла должна быть
# одна строка в списке. Имена файлов должны быть
# полными (начинаться с /). Необязательный параметр: имя
# директории; по умолчанию действия должны выполняться
# для домашней директории.

if [ "$1" != "" ]; then
    export DIRPATH=`readlink -m $1`
else
    export DIRPATH=`readlink -m $HOME`
fi

find $DIRPATH -type f -perm -011