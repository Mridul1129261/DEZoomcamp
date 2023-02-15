FROM python:3.12.0a5-slim
RUN pip install pandas
WORKDIR /app
COPY pipeline.py pipeline.py
ENTRYPOINT ["python", "pipeline.py"]

# docker run -it --entrypoint=bash python
# docker run -it((interactive)) [container name]{{python:latest}}
# docker build -t test:pandas .
# docker run -it test:pandas 12-03-2004 
# *(()) stands for, {{}} example

# winpty docker run -it   
# -e POSTGRES_USER="root"
# -e POSTGRES_PASSWORD="root"   
# -e POSTGRES_DB="ny_taxi"   
# -v /c/Users/91962/Desktop/DockerDE/ny_taxi_postgres_data:/var/lib/postgresql/data
# -p 5432:5432   
# postgres:13
