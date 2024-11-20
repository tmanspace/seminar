#!/bin/bash

read -p "Введите число: " number

if [ "$number" -gt 0 ]; then
    echo "Число $number является положительным."
    echo "Подсчёт от 1 до $number:"
    counter=1
    while [ "$counter" -le "$number" ]; do
        echo "$counter"
        counter=$((counter + 1))
    done
elif [ "$number" -lt 0 ]; then
    echo "Число $number является отрицательным."
else
    echo "Вы ввели ноль."
fi
