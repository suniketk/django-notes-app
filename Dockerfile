FROM Python:3.9
WORKDIR /app

copy requrirements.txt /app

run sudo apt-get update 
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/lists/*

RUN pip install mysqlclient
RUN pip install requrirements.txt

copy . /app

EXPOSE 8000

#RUN python manage.py migrate
#RUN python manage.py makemigrations
