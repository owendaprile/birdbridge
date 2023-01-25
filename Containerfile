FROM docker.io/denoland/deno:1.29.4

EXPOSE 8000

COPY . /app

RUN deno cache /app/main.ts

CMD [ "deno", "run", "--allow-all", "/app/main.ts" ]
