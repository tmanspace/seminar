#!/bin/bash

greet() {
    echo "Hello, $1"
}

sum() {
    local result=$(( $1 + $2 ))
    echo "$result"
}

greet "World"
greet "Timur"

num1=10
num2=20
result=$(sum $num1 $num2)
echo "Сумма чисел $num1 и $num2: $result"
