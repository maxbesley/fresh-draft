FROM denoland/deno:alpine-2.3.6

USER deno

WORKDIR /fresh

COPY app .

RUN deno cache main.ts

EXPOSE 9000

CMD ["deno", "run", "-A", "main.ts"]
