# Lab 02 – Docker básico com Apache HTTPD

Este lab demonstra o uso básico do Docker com o servidor Apache (httpd), reforçando os conceitos aprendidos no Lab 1 com Nginx.

## Passos principais

1. Baixar imagem do Apache:
- docker pull httpd

2. Rodar o container:
- docker run -d --name apache-server -p 8081:80 httpd

3. Testar via navegador:
- curl http://localhost:8081

4. Acessar o container:
- docker exec -it apache-server bash
- ls /usr/local/apache2/htdocs

5. Parar e remover:
- docker stop apache-server
- docker rm apache-server

6. (Opcional) Remover a imagem:
- docker rmi httpd

## Conceitos aplicados
- docker pull, docker run, docker ps, docker exec
- Diferença entre imagens: Nginx x Apache
- Reforço no uso de containers em modo detached
