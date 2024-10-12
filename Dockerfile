FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_RUN_PORT=3000

EXPOSE 3000

CMD ["flask", "run", "--host=0.0.0.0"]


