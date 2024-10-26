#!/bin/bash

# Construir a imagem Docker
docker build -t meu-servidor-web .

# Verificando se o container já está rodando e pará-lo
docker stop meu-servidor-web-container 2>/dev/null || true
docker rm meu-servidor-web-container 2>/dev/null || true

# Rodar o container
docker run -d -p 8080:80 --name meu-servidor-web-container meu-servidor-web

echo "Servidor web rodando em http://localhost:8080"
