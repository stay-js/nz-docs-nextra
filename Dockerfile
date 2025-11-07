FROM node:22-alpine

WORKDIR /app

RUN npm install -g pnpm

COPY . .

RUN pnpm install

EXPOSE 3000

CMD ["pnpm", "dev"]
