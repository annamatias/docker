# Use a imagem base do Airflow
FROM apache/airflow:2.10.0-python3.10

# Instale o driver MySQL para Python
RUN pip install mysql-connector-python

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /usr/local/airflow

# Copie o script de inicialização para o contêiner
COPY init_db.sh /usr/local/airflow/init_db.sh

# Torne o script executável
RUN chmod +x /usr/local/airflow/init_db.sh

# Exponha a porta padrão do Airflow
EXPOSE 8080

# Comando padrão para iniciar o Airflow
CMD ["/usr/local/airflow/init_db.sh", "airflow", "webserver"]
