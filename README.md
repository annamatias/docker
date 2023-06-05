# Docker e Kubernetes

<p align="center">Tudo que aprendi utilizando docker e kubernetes, utilizando ferramentas mais atuais e muito mais.</p>

# Case 1: Criação de contêiners dentro do docker, utilizando imagens pensadas em arquitetura Big Data

Esse projeto visa trazer informações dos meus aprendizados de forma detalhada, novos estudos e acompanhamento tecnologico.

---

## Motivação

<p> A maior motivação para esse projeto é poder deixar aqui tudo que eu sei e aprendi na área de dados para outras pessoas, isso vai ajudar quem está aprendendo, e também é um lugar colaborativo. Onde você também pode melhorar o que já tem.

---

## Pré-requisitos

Antes de começar a utilizar deste projeto, confira se atende os seguintes requisitos:

- Instalação do docker
- Saiba programar em `Python`
- Noções básicas sobre `docker, contêiners, imagens, kubernetes, CI/CD, monitoração`

---

## Executar Projeto

### Instalar as Dependências

É necessário executar os comandos abaixo para executar o projeto.


---

# Comandos Uteis

- Listar todas os conteiners `docker ps –a`
- Apagar todos os conteiners, inclusive o que está parado
  - Linux/MacOs: `docker container rm $(docker container ls -aq)`
    - Na flag `-aq`, o q é para pegarmos somente os IDs e o `-a` é porque eu quero pegar todos os meus containers, inclusive os que estão parados.
- Apagar todas as imagens
  - Linux/MacOs: `docker rmi $(docker image ls -aq)`
    - Se caso der erro por estar referenciando em outros repositórios, coloque no final do comando `--force`
- `docker ps –s ou docker container ls –s` com a flag `-s` retorna informações de tamanho do conteiner
- `docker history`

---

# Funcionalidades do Docker

## Persistência em contêiners

Para não sumir o nosso docker que está em execução depois de parar, precisamos utilizar do *bind mounts*.
Basicamente o bind, ele utiliza uma ligação entre um ponto de montagem do nosso sistema operacional e algum diretório dentro do conteiner.

**Resumão bem objetivo**: pra não sumir o que você faz dentro do conteiner quando cria/executa, utilize a flag `-v`, significa volume. Tudo o que fizer vai estar salvo no volume dentro do conteiner e não vai sumir. **O correto mesmo é utilizar da nomenclatura do próprio mount, que vou descrever abaixo também, é o mais recomendado pelo Docker, mas tem essa outra possibilidade**

### Como fazer?

Crie uma pasta no seu diretório, no meu caso coloquei o nome de volumes mesmo, e referenciei depois `:/app ubuntu bash`, para dentro do conteiner ele criar uma pasta app e salvar a imagem do ubuntu. Detalhe, coloque o caminho completo do seu pc da pasta, se for linux, macOs, faz um `pwd` da pasta.

**Utilizando apenas do volume e dá certo:**

- `docker run -it -v /docker/volumes:/app ubuntu bash`

**Recomendado pelo Docker:**

- `docker run -it --mount type=bind,source=/docker/volumes,target=/app ubuntu`

Depois que fizer o comando acima, entre na pasta `app`, e pode criar o que for ali dentro que ele vai ficar salvo posteriormente no diretório que referenciamos.

### Outras formas de fazer

É possivel criar volumes a partir do docker, sem precisar referenciar um caminho especifico.
Utilizando: `docker volumes create novo-volume`, ele vai gravar dentro da propria pasta de instalação do docker, fica armazenado lá, na nossa propria máquina.

Fazendo dessa forma fica muito mais verboso, do que colocar caminhos da própria máquina, e sem contar que não vai ter problemas se caso não existir o diretorio no seu sistema.

Depois de realizar a criação do volume, você pode fazer assim:

- `docker run –it –v novo-volume:/app ubuntu bash`
- `docker run -it --mount source=novo-volume, target=/app ubuntu bash`

## Arquivos TMP - Segurança
Pensando em casos de segurança, arquivos que você não queira que fique gravado, você pode persistir dados em memória, assim que finalizar a sessão do docker, ele é apagado.

`docker run –it --tmpfs=/app ubuntu bash`

**Recomendado pelo docker**

`docker run –it --mount type=tmpfs,detination=/app ubuntu bash`

---

### Referências

[hub imagens docker](https://hub.docker.com/search?q=)

---

## Autor

- **Anna Karoliny (@annakaroliny.tech)** - *Mentora, Desenvolvedora e Engenheira de Dados*
