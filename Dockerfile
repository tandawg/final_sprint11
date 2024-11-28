# Используем облегченный образ Golang
FROM golang:1.22-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем go.mod и go.sum для установки зависимостей
COPY go.mod go.sum ./

# Устанавливаем зависимости
RUN go mod download

# Копируем оставшиеся файлы
COPY . .

# Сборка приложения
RUN go build -o parcel-service main.go

# Указываем команду для запуска приложения
CMD ["./parcel-service"]