# Choix de l'image de base
FROM python:3.9-slim

# On définit le dossier de travail (si il n'existe pas il sera créé)
WORKDIR /app


# Copie des fichiers d'installation
COPY requirements.txt requirements.txt

# Installation des librairies 
RUN pip3 install -r requirements.txt


# Copie du code
COPY . .

# Exposition du port de l'application
EXPOSE 5000


# Lancement de l'application
CMD ["python3", "app.py"]