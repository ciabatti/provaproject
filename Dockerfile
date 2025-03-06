# Usa l'immagine ufficiale di Python
FROM python:3.10-slim

# Imposta la directory di lavoro nel container
WORKDIR /app

# Copia il file requirements.txt (che creeremo dopo) e installa i pacchetti
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copia tutto il codice dell'app nel container
COPY . .

# Espone la porta 8000 per Django
EXPOSE 8000

# Comando per avviare il server Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
