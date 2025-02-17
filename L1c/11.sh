#!/bin/bash

# Получить список всех процессов, идущих на заданном
# компьютере, отсортированный либо по времени,
# потраченном на их выполнение, либо по коду состояния
# процесса (STAT). Список должен передаваться вьюеру.
# Первый параметр скрипта должен управлять указанным
# выбором. Если указан второй параметр — полная строка
# команды (со всеми опциями и параметрами) — выводится
# отсортированный в соответствии с первым параметром
# список процессов, порожденных только этой командой.

# Запуск: ./11.sh time или ./11.sh stat или ./11.sh stat '/usr/sbin/apache2'

processes=`ps aux --sort=$1`

if [ $2 ]
then
	echo "$processes" | grep "$2"
else
	echo "$processes"
fi