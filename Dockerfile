FROM python:3.9-alpine

# Install dependencies
RUN apk update && apk add --no-cache gcc musl-dev libffi-dev

WORKDIR /app

COPY app.py .

# Upgrade pip and setuptools to fix known vulnerabilities
RUN pip install --upgrade pip setuptools

# Install Flask
RUN pip install flask

EXPOSE 5000

CMD ["python", "app.py"]
