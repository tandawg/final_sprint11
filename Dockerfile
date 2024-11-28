# Используем облегченный образ Golang
FROM golang:1.22.0-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы и собираем приложение
COPY . .
RUN go build -o parcel-service main.go

# Указываем команду для запуска приложения
CMD ["./parcel-service"]