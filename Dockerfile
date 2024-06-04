# From ubuntu

# RUN apt-get update && apt-get -y install python3 python3-pip
# RUN apt-get -y upgrade

# # Install Flask-Ask
# RUN pip install flask

# WORKDIR /app

# COPY . .

# CMD [ "python3", "-m" "flask", "run", "--host=0.0.0.0" ]

FROM python:3.8

RUN python3 -m pip install flask
RUN mkdir /app
WORKDIR /app
COPY app.py /app
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]