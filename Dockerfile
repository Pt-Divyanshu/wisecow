FROM python:3.11-alpine

WORKDIR /app

# Install cowsay, fortune, netcat
RUN apk add --no-cache bash cowsay fortune nc

COPY . .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["./wisecow.sh"]
