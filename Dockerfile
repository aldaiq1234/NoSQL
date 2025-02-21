# Используем Node.js 18
FROM node:18

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и устанавливаем зависимости
COPY package.json package-lock.json ./
RUN npm install

# Копируем код проекта
COPY . .

# Указываем порт
EXPOSE 3000

# Запускаем сервер
CMD ["npm", "start"]
