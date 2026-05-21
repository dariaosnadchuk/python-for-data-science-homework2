# 1. Беремо офіційний легкий образ Python
FROM python:3.11-slim

# 2. Встановлюємо робочу папку всередині контейнера
WORKDIR /app

# 3. Копіюємо файл із залежностями в контейнер
COPY requirements.txt .

# 4. Встановлюємо NumPy всередині контейнера
RUN pip install --no-cache-dir -r requirements.txt

# 5. Копіюємо наш скрипт у контейнер
COPY main.py .

# 6. Команда, яка виконається при запуску контейнера
CMD ["python", "main.py"]