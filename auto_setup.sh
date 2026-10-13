#!/bin/bash

echo "🚀 Начинаю автоматическую настройку проекта..."

# Это список папок, которые мы хотим создать. Мы перечисляем их через пробел.
FOLDERS="src tests logs config backups"

# Цикл for: для каждой папки (folder) из списка (FOLDERS) сделай следующее:
for folder in $FOLDERS; do
    echo "Создаю папку: $folder"
    
    # Создаем папку
    mkdir -p "$folder"
    
    # Создаем внутри пустой файл readme.md, чтобы папка не была совсем пустой
    touch "$folder/readme.md"
done

echo "✅ Готово! Структура проекта создана."
echo "Проверь результат командой: ls -l"