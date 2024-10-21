#!/bin/bash
set -e

# Upgrade pip and install requirements
if [ -e "/opt/airflow/requirements.txt" ]; then
  pip install --upgrade pip
  pip install -r /opt/airflow/requirements.txt
fi

# Initialize Airflow database and create user if not already initialized
if [ ! -f "/opt/airflow/airflow-webserver.pid" ]; then
  airflow db init
  airflow users create \
    --username admin \
    --firstname admin \
    --lastname admin \
    --role Admin \
    --email admin@example.com \
    --password admin
fi

# Start the webserver
exec airflow webserver
#!/bin/bash
set -e

# Upgrade pip and install requirements
if [ -e "/opt/airflow/requirements.txt" ]; then
  pip install --upgrade pip
  pip install -r /opt/airflow/requirements.txt
fi

# Initialize Airflow database and create user if not already initialized
if [ ! -f "/opt/airflow/airflow-webserver.pid" ]; then
  airflow db init
  airflow users create \
    --username admin \
    --firstname admin \
    --lastname admin \
    --role Admin \
    --email admin@example.com \
    --password admin
fi

# Start the webserver
exec airflow webserver
#!/bin/bash
set -e

# Upgrade pip and install requirements
if [ -e "/opt/airflow/requirements.txt" ]; then
  pip install --upgrade pip
  pip install -r /opt/airflow/requirements.txt
fi

# Initialize Airflow database and create user if not already initialized
if [ ! -f "/opt/airflow/airflow-webserver.pid" ]; then
  airflow db init
  airflow users create \
    --username admin \
    --firstname admin \
    --lastname admin \
    --role Admin \
    --email admin@example.com \
    --password admin
fi

# Start the webserver
exec airflow webserver
