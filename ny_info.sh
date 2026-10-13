#!/bin/bash

# Это переменные. Мы задаем данные один раз, а используем много раз.
MY_NAME="Егор"
MY_AGE=18
MY_GOAL="Junior DevOps Engineer"
SALARY_TARGET="300000"

echo "Привет, меня зовут $MY_NAME."
echo "Мне $MY_AGE лет."
echo "Моя цель: стать $MY_GOAL."
echo "Целевая зарплата: $SALARY_TARGET рублей в месяц."
echo "Система: $(uname -a)" # Эта команда встроит реальные данные о твоем ядре Linux!

