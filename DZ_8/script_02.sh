#!/bin/bash

echo "Текущее значение PATH: $PATH"

if [ -z "$1" ]; then
    echo "Ошибка: Укажите директорию для добавления в PATH."
    exit 1
fi

if [ -d "$1" ]; then
    export PATH="$PATH:$1"
    echo "Новая директория '$1' добавлена в PATH."
    echo "Обновлённое значение PATH: $PATH"
else
    echo "Ошибка: Директория '$1' не существует."
    exit 1
fi
