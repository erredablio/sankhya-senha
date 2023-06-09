# sankhya-senha

## Passos necessários para executar o projeto
1. Baixar o projeto e abrir o terminal na pasta que contém os arquivos;
2. Rodar o comando: ```docker build -t sistemaramada/sankhya-senha .```;
3. Rodar o comando: ```docker run -e "PASSWORD=SENHA" sistemaramada/sankhya-senha```, substituindo o termo *SENHA* pela senha a ser criptografada;
4. Será gerada a mensagem ```Encoded password: XXXXXXXXXXXXXXXXXX``` no terminal, onde *XXXXXXXXXXXXXXXXXX* é a representação da senha criptografada gerada pelo picketbox;
5. Copiar o valor gerado no lugar de *XXXXXXXXXXXXXXXXXX* e inserir no .env para geração de base de aplicação Sankhya.


* Obs.: *O dockerfile **PRECISA** ser mantido com o nome Dockerfile, senão gera erro na hora de realizar o build.*




