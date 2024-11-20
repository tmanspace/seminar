#!/bin/bash

if [ ! -f "input.txt" ]; then
  echo "Файл input.txt не найден!"
  exit 1
fi

wc -l < input.txt > output.txt

ls non_existing_file 2> error.log
