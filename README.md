## simple_flask_app

Ce repository a pour but de fournir une démonstration simple de création d'image avec docker.

## Usage

Je vous recommande d'utiliser un venv afin de garder tout encapsulé dans ce répertoire de travail

### Linux
```bash
	python3 -m venv venv
	source venv/bin/activate
```

### Windows

```powershell
	python -m venv venv
	.\venv\Scripts\activate
```

## Prerequisites

- docker installé sur votre machine et lancé.

## Branches utilisées

Vous trouverez deux branches dans ce repository :

- main : la branche principale du repository. elle contient le code de l'exemple. Servez vous-en pour tenter de créer une image vous même.
- image : la branche contenant le code du dockerfile.

## Creer une image

Ecrivez un dockerfile:

```dockerfile
FROM python:3.10
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENTRYPOINT ["python", "app.py"]
```


## Construire l'image

```bash
	docker build -t simple_flask_app .
```

## Lancer l'image

```bash
	docker run -p 5000:5000 simple_flask_app
```



