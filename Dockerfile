FROM python:3.9-slim

# Update system packages
RUN apt-get update && apt-get upgrade -y && apt-get clean

WORKDIR /app

COPY app.py .

# Upgrade setuptools to fix known vulnerabilities
RUN pip install --upgrade setuptools>=78.1.1

# Install Flask
RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]
