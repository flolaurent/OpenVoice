FROM python:3.9-slim
WORKDIR /app

# Copiez d'abord requirements.txt et installez les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiez le reste des fichiers
COPY . .

# Commande pour exécuter l'application
CMD ["python", "openvoice/openvoice_app.py", "--share"]

