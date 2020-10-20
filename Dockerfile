FROM debian:stretch
WORKDIR /app
RUN apt update && apt install python-pip python-numpy openssh-server -y && rm -rf /var/lib/apt
COPY requirements.txt requirements.txt 
RUN pip install -r requirements.txt
COPY src/ /app/
EXPOSE 5000 22
ENTRYPOINT ["python", "app.py"]
