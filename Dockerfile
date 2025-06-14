FROM denoland/deno:2.3.5

USER deno

WORKDIR /fresh

COPY app .

RUN deno cache main.ts

EXPOSE 9000

CMD ["deno", "run", "--allow-net", "main.ts"]
