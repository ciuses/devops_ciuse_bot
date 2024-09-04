FROM python:3.10-slim

WORKDIR /usr/src/app

ADD https://github.com/ciuses/devops_ciuse_bot.git ./

RUN <<EOF
apt-get update
apt-get -y install libpq-dev gcc
pip install psycopg2
pip install --no-cache-dir -r requirements.txt
EOF

CMD [ "python", "./bot/bot.py" ]
