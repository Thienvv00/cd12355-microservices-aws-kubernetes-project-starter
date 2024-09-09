FROM python:3.12.3-slim



WORKDIR /usr/src/app

COPY analytics .

RUN pip install -r requirements.txt

ENV DB_USERNAME=myuser
ENV DB_PASSWORD=mypassword
ENV DB_HOST=127.0.0.1
ENV DB_PORT=5433
ENV DB_NAME=mydatabase

EXPOSE 5153

CMD ["python", "app.py"]