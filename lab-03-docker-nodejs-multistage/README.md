# Lab 3 – Docker Multistage com Node.js

Este laboratório demonstra como criar uma aplicação Node.js com uma imagem Docker otimizada utilizando o recurso de **Multistage Build**.

## Estrutura do Projeto

lab-03-docker-node-multistage/
├── README.md
├── dockerfile
└── src
    ├── index.js
    └── package.json


## O que é demonstrado

- Uso de múltiplas etapas na construção da imagem Docker.
- Separação entre a etapa de build e a etapa de execução.
- Imagem final leve e otimizada usando `node:alpine`.

## Conteúdo dos Arquivos

### `src/index.js`
- Cria um servidor HTTP simples com Node.js que responde com:
- Hello from a professional Docker container!

### src/package.json

"scripts": {
  "start": "node index.js"
}

### dockerfile

- Dockerfile multistage:
- Primeira etapa (builder) instala dependências.
- Segunda etapa copia apenas o necessário para a imagem final.
- Usa node:alpine para minimizar o tamanho da imagem.

## Como usar

1. Build da imagem
- docker build -t lab-03-node-multistage .

2. Rodar o container
- docker run -p 3000:3000 lab-03-node-multistage

3. Testar a aplicação
- curl http://localhost:3000

4. Resposta esperada: 
- Hello from a professional Docker container!

### Aprendizado
Este laboratório mostra boas práticas para construção de imagens Docker mais seguras e leves para ambientes de produção.
