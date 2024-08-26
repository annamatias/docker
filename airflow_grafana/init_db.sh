#!/bin/bash

# Verifica se o banco de dados já foi inicializado
if [ ! -f /usr/local/airflow/airflow_initialized ]; then
  echo "Inicializando o banco de dados do Airflow..."
  airflow db init
  # Cria um arquivo sinalizando que a inicialização foi feita
  touch /usr/local/airflow/airflow_initialized
else
  echo "O banco de dados do Airflow já foi inicializado."
fi

# Inicia o Airflow
exec "$@"

# Explicação:

# O script verifica se o arquivo /usr/local/airflow/airflow_initialized existe. 
# Se não existir, ele executa airflow db init e cria o arquivo sinalizando que a inicialização foi feita.
# Se o arquivo já existir, o comando airflow db init não é executado novamente.
# Finalmente, o script inicia o Airflow.