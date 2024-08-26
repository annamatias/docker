# Comands at line comand

Follow up at comands what need for set up a infraestructure

- To deploy Airflow on Docker Compose, you should fetch [docker-compose.yaml](https://airflow.apache.org/docs/apache-airflow/2.10.0/docker-compose.yaml), to do copy on past of diretory with the same name.
- `mkdir -p ./dags ./logs ./plugins ./config`
  `echo -e "AIRFLOW_UID=$(id -u)" > .env`