# Utiliza la imagen base de Python 3.8
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos necesarios al directorio de trabajo
COPY app.py /app/app.py
COPY ratings.csv /app/ratings.csv

# Instala la biblioteca Flask
RUN pip install flask pandas

# Comando que se ejecutará al iniciar el contenedor
CMD ["python", "app.py"]