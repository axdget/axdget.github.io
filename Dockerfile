# Использовать официальный образ Python в качестве базового образа
FROM python:3-alpine

# Копировать содержимое текущей директории в /app в Docker-контейнере
WORKDIR /app
COPY . /app

# Установить зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Устанавливаем переменную окружения
ENV FLASK_APP app.py

# Запуск команды при запуске контейнера
CMD ["flask", "run", "--host", "0.0.0.0"]