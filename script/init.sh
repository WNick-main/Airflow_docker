#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

airflow create_user -r Admin -u admin -f admin -l test -p 'admin' -e test.test@gmail.com

sleep 10
# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver

