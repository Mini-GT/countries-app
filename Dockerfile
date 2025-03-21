FROM oven/bun:latest

WORKDIR /app

COPY package.json bun.lock ./

RUN bun install

COPY . .

RUN bun run build  

CMD ["bun", "run", "start"]