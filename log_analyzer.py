# log_analyzer.py

log_file = "server.log"
warning_count = 0
warning_found = []

print(f"🔍 Начинаю анализ файла: {log_file}")
print("-" * 40)

# Открываем файл для чтения ('r' = read)
# Конструкция 'with' гарантирует, что файл корректно закроется после работы
with open(log_file, "r") as file:
    # Читаем файл построчно
    for line in file:
        # Убираем лишние пробелы и символы переноса строки по краям
        clean_line = line.strip()
        
        # Проверяем, есть ли слово ERROR в этой строке
        if "WARNING" in clean_line:
            warning_count += 1
            warning_found.append(clean_line)

# Выводим итоги
print(f"✅ Анализ завершен.")
print(f"🚨 Всего найдено предупреждений: {warning_count}")

if warning_count > 0:
    print("\n📋 Список найденных предупреждений:")
    for war in warning_found:
        print(f"  -> {war}")
else:
    print("✨ Система работает стабильно, предупреждений нет.")
    
print("-" * 40)