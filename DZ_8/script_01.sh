#!/bin/bash

echo "Список всех файлов и их типов в текущей директории:"
for item in *; do
    if [ -d "$item" ]; then
        echo "$item - каталог"
    elif [ -f "$item" ]; then
        echo "$item - файл"
    elif [ -L "$item" ]; then
        echo "$item - символическая ссылка"
    else
        echo "$item - неизвестный тип"
    fi
done

echo

if [ -z "$1" ]; then
    echo "Ошибка: Укажите имя файла в качестве аргумента."
    exit 1
fi

if [ -e "$1" ]; then
    echo "Файл '$1' найден в текущей директории."
else
    echo "Файл '$1' отсутствует в текущей директории."
fi

echo

echo "Информация о каждом файле (имя и права доступа):"
for file in *; do
    if [ -e "$file" ]; then
        permissions=$(ls -ld "$file" | awk '{print $1}')
        echo "Файл: $file, Права: $permissions"
    fi
done
