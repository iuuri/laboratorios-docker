# Lab 04 – Docker com Python e FastAPI

Este laboratório demonstra como criar uma aplicação básica utilizando FastAPI e executá-la dentro de um container Docker.

## Estrutura do Projeto

lab-04-docker-fastapi/
├── Dockerfile
├── requirements.txt
└── main.py

## Etapas

1. **Criar estrutura do projeto**
   mkdir -p ~/labs/docker/fastapi-app
   cd ~/labs/docker/fastapi-app

2. **Criar o arquivo da aplicação**
- main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello from a Dockerized FastAPI app!"}

3. **Criar o arquivo de dependências**
- requirements.txt
fastapi
uvicorn

4. **Criar o Dockerfile**
- FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

5. **Build da imagem**
docker build -t fastapi-lab .

6. **Executar o container**
docker run -d -p 8000:8000 fastapi-lab

7. **Testar a aplicação**
curl http://localhost:8000/

Retorno esperado: "{"message":"Hello from a Dockerized FastAPI app!"}"

8. (Opcional) Parar e remover container
docker ps -q --filter ancestor=fastapi-lab | xargs docker stop | xargs docker rm

**Conceitos abordados**
- Criação de containers para aplicações Python
- Dockerfile básico
- FastAPI com Uvicorn
- Exposição de porta e build de imagem personalizada
