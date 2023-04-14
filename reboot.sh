#!/usr/bin/env bash
uwsgi_name="uwsgi"
uwsgi_path="/root/.virtualenvs/Detection_env/bin/uwsgi"

echo -e "\033[42;1m--------------------wsgi process--------------------\033[0m"

ps -ef |grep ${uwsgi_name}.ini | grep -v grep

sleep 0.5

echo -e '\n--------------------going to close--------------------'

ps -ef |grep ${uwsgi_name}.ini | grep -v grep | awk '{print $2}' | xargs kill -9

sleep 0.5 

echo -e '\n----------check if the kill action is correct----------'

${uwsgi_path} --ini ${uwsgi_name}.ini

echo -e '\n\033[42;1m----------------------started----------------------\033[0m'
sleep 1

ps -ef |grep ${uwsgi_name}.ini | grep -v grep