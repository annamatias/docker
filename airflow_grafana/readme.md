# Comands of docker for create infrastructure

Follow up setps for reproduce my environment:

- First, I create archive `Dockerfile` with comands about which tools I need install
- Second, I create archive `docker-compose.yaml` with informations of airflow, for I have configurations
- In my comand line, I executed `docker compose build`, within directory when be archive `docker-composer.yaml`. Its very most necessary for create at image at docker
- After that comand, execute `docker compose up -d` for start service
<!-- - `docker exec -it airflow airflow db init` for started the db  <-- **it's not necessary execute this comand, because I create one automation what to do verification, if db has started or no** -->
- `docker compose down` and the end, this comand for terminated execution of docker

## Create your secure keys

**To do Fernet Key**
openssl rand -base64 32

**To do Secure Key**
openssl rand -base64 32
