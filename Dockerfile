# Imagem base do Nginx
FROM nginx:alpine

# Copiando a página HTML personalizada para o diretório do Nginx
COPY ./html /usr/share/nginx/html

# Expondo a porta 80
EXPOSE 80

# Comando para rodar o Nginx
CMD ["nginx", "-g", "daemon off;"]
